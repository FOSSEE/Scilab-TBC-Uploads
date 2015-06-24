////Example 4_18
clc;
clear;close;

//Given data: 
V=200;//V
T=1000/10^6;//s
Ton=300/10^6;//s
R=4;//ohm
L=10/1000;//H

//Solution :
f=1/T;//Hz
Vrms1=sqrt((200/%pi*sin(2*%pi*0.3))^2+(200/%pi*((1-cos(2*%pi*0.3))))^2)/sqrt(2);//V
Vrms2=sqrt((200/2/%pi*sin(2*%pi*2*0.3))^2+(200/2/%pi*((1-cos(2*%pi*2*0.3))))^2)/sqrt(2);//V
Vrms3=sqrt((200/3/%pi*sin(2*%pi*3*0.3))^2+(200/3/%pi*((1-cos(2*%pi*3*0.3))))^2)/sqrt(2);//V
Z1=R+%i*(2*%pi*f*L);//ohm
I1=Vrms1/abs(Z1);//A
disp(I1,"RMS value of 1st harmonic of load current(A)");
Z2=R+%i*(2*2*%pi*f*L);//ohm
I2=Vrms2/abs(Z2);//A
disp(I2,"RMS value of 2nd harmonic of load current(A)");
Z3=R+%i*(3*2*%pi*f*L);//ohm
I3=Vrms3/abs(Z3);//A
disp(I3,"RMS value of 3rd harmonic of load current(A)");
Iavg=V/R*Ton/T;//A
Irms=sqrt(Iavg^2+I1^2+I2^2+I3^2);//A
disp(Irms,"RMS value of load current(A)");
