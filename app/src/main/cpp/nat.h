#pragma once
#include <jni.h>
#include <string>
#include "clientSerena/header/client.h"
#include<thread>

static Client cl("31.172.65.66",9998);
static jobject obj;
static JNIEnv* g_env;
void SerenaStart();
void SerenaStop();
extern "C" JNIEXPORT jstring JNICALL
Java_com_example_test_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject jb);
extern "C" JNIEXPORT void JNICALL
Java_com_example_test_Serena_startGetPacket(
        JNIEnv* env,
        jobject jb);

extern "C"
JNIEXPORT void JNICALL
Java_com_example_test_Serena_00024MyThread_startGetPacket(JNIEnv *env, jobject thiz);
