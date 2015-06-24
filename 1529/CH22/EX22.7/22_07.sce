//Chapter 22, Problem 7
clc;
E=200;                          //generated e.m.f 
ia=30;                          //armature current
Ra=0.30;                        //armature resistance
V=E-(ia*Ra);                    //terminal voltage
printf("Terminal voltage = %f V",V);
