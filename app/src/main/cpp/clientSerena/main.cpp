#include<iostream>
#include<thread>
#include"header/client.h"
using namespace std;
void Seren(){
    std::cout<<"START\n";
}
void STOP(){
    std::cout<<"STOP\n";
}
int main(){
    std::cout<<"START\n";
    Client cl("127.0.0.1",9998);
    cl.Connect();
    cl.GetPacket(Seren,STOP);
    
    cin.get();
    cin.get();
    return 0;
}