#include "header/client.h"
Client::Client()
{
    InitilClient("127.0.0.1", 9999);
}
Client::Client(std::string ip, int port)
{
    InitilClient(ip, port);
}
Client::~Client()
{
    close(sock);
}
int recV(int sock, char *buf, int size)
{

    int ret = recv(sock, buf, size, MSG_PEEK);
    if (ret <= 0)
        return ret;
    int indexs = 0;
    for (int i = 0; i < ret; i++)
    {
        if (buf[i] == ':')
        {
            indexs = i;
            break;
        }
    }
    char strsize[10];
    ret = recv(sock, strsize, indexs + 1, NULL);
    if (ret <= 0)
        return ret;
    strsize[indexs] = '\0';
    int realsize = atoi(strsize);
    ret = recv(sock, buf, realsize, NULL);
    return ret;
}

int senD(int sock, const char *buf, int size)
{
    static std::vector<char> vec(500);
    std::string sizestr = std::to_string(size);
    int indexs = sizestr.length();
    memcpy(&vec[0], &sizestr[0], indexs);
    vec[indexs] = ':';
    memcpy(&vec[indexs + 1], &buf[0], size);
    int allsize = indexs + size + 1;
    
    int ret = send(sock, &vec[0], allsize, MSG_NOSIGNAL);
    return ret;
}
void Client::InitilClient(std::string ip, int port)
{

    char buf[1024];
    int bytes_read;

    addr.sin_family = AF_INET;
    addr.sin_port = htons(port); // или любой другой порт...
    addr.sin_addr.s_addr = inet_addr(ip.c_str());
}
void Client::GetPacket(void (*serenastart)(), void (*serenastop)())
{
    std::cout<<"PAKET\n";
    char buff[50];
    while (true)
    {

        int ret = recV(sock, buff, 50);
        if (ret <= 0)
        {

            

            // shutdown(sock,SHUT_RDWR);
            std::cout << "DISSOCNNECT\n";
            Connect();
                
            
        }
        if (strcmp(buff, "START") == 0)
        {
            serenastart();
            std::cout << "SERENAAAAAAA START\n";
        }
        else if (strcmp(buff, "STOP") == 0)
        {
            serenastop();
            std::cout << "SERENAAAAAAA ENNNND\n";
        }else{
            std::cout<<"PACK: "<<buff<<"\n";
        }
        
        
    }
}

int Client::Connect()
{
    while (true)
    {
        close(sock);
        sock = socket(AF_INET, SOCK_STREAM, 0);
        struct timeval tv;

        tv.tv_sec = 10; /* 30 Secs Timeout */
        tv.tv_usec = 0;

        if (setsockopt(sock, SOL_SOCKET, SO_RCVTIMEO, (const char *)&tv,
                       sizeof(tv)) < 0)
            std::cout << "setsockopt failed\n";

        // struct timeval tv;
        // tv.tv_sec = 5;
        // tv.tv_usec = 0;
        // setsockopt(sock, SOL_SOCKET, SO_RCVTIMEO, (const char*)&tv, sizeof tv);
        if (sock < 0)
        {
            std::cout << "ERRRO Client\n";
        }
        int ret = connect(sock, (struct sockaddr *)&addr, sizeof(addr));
        if (ret < 0)
        {
            std::cout << "ERROR CONNECT\n";
            std::cout << "RET CONN: " << ret << "\n";
        }
        else
        {
            std::cout << "CONNECT\n";
            senD(sock, "1", 2);
            break;
        }
        sleep(2);
    }


    return 0;
}