#include"nat.h"
//jobject jbe;
//JavaVM* g_vm;
//Client cl("31.172.65.66",9998);

extern "C" JNIEXPORT jstring JNICALL
Java_com_example_test_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject jb) {


    int ret=cl.Connect();
    std::string hello;
    if(ret==-1)
        hello = "ERROR CONNECT\n";
    else
        hello="CONNECT\n";

    return env->NewStringUTF(hello.c_str());
}
void SerenaStart(){
    jclass clazz = g_env->GetObjectClass(obj);
    jmethodID methodID = g_env->GetMethodID(clazz, "StartSerena", "()V" );
    g_env->CallVoidMethod(obj,methodID);
}
void SerenaStop(){

    jclass clazz = g_env->GetObjectClass(obj);
    jmethodID methodID = g_env->GetMethodID(clazz, "StopSerena", "()V" );
    g_env->CallVoidMethod(obj,methodID);
}
extern "C" JNIEXPORT void JNICALL
Java_com_example_test_Serena_00024MyThread_startGetPacket(
        JNIEnv* env,
        jobject jb){
    obj=env->NewGlobalRef(jb);
    g_env=env;
    cl.GetPacket(SerenaStart,SerenaStop);
}