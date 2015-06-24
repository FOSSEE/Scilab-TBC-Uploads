//example 9.8
clc;funcprot(0);
//Initialization of Variable
f1=60;//frequency
V=150;//voltage
f2=31;//kHz
//calculation
f3=f1*4;
disp(f3*2^7/1000,"pwm fundamental frequency in kHz:")
Vo=V*10^(-4.2);
disp(Vo*1000,"output voltage in V:")
clear()
