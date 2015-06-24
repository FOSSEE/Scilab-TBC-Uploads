//Chapter 22, Problem 8
clc;
ia=8;                               //armature current
Ra=1;                               //armature resistance   
Rl=60;                              //loadd resistance
V=ia*Rl;                            //terminal voltage
E=V+(ia*Ra);                        //generated e.m.f 
printf("(a) Terminal voltage = %f V\n\n",V);
printf("(b) Generated emf = %f V\n\n",E);
