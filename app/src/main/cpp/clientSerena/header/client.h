#pragma once
#include <sys/types.h>
#include <sys/socket.h>
#include <iostream>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <string.h>
#include <vector>

int recV(int sock, char *buf, int size);
int senD(int sock, const char *buf, int size);
class Client
{
private:
    void InitilClient(std::string ip, int port);

public:
    Client();
    Client(std::string ip, int port);
    void GetPacket(void(*serenastart)(),void(*serenastop)());
    int Connect();
    ~Client();
private:
    struct sockaddr_in addr;
    int sock;
};
