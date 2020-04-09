#include <stdio.h>
/*
#include "hotspot.h"
#include <libunwind.h>
#include <sys/time.h>
#include <stdbool.h>
#include <signal.h>
#include <unistd.h>
#include <string.h>
*/

void funca(){
    for (int i = 0; i < 100000000; i++);
}

int funcb(){
    for (int i = 0; i < 1000000000; i++);
}

void funcc(){
    for (int i =0; i < 1000000000; i++);
}

void funcd(){
    for (int i = 0; i < 10000; i++)
        for (int j = 0; j < 100000; j++);
}

void funce(){
    for (int i = 0; i < 1000000; i++);
}
int main(){
    // hot_spot_analysis(500);
    funce();
    funca();
    funcb();
    funcd();
    funca();
    funca();
    funcc();
    // print_analysis();
}
