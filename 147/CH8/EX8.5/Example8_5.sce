close();
clear;
clc;
Ibq = 40*10^(-6); //A
Vbb = 6; //V
Vbeq = 0.7; //for Si transistor
//By KVL around the base-emitter
//Vbb = Ibq*Rb + Vbeq;
Rb = (Vbb-Vbeq)/Ibq; //ohm
mprintf("Rb = %0.1f k ohm",Rb/1000);