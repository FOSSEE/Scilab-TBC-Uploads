clc;
clear all;
disp("Time and Temperature")
L=60/1000;// m
a=1.22*10^(-5);//m^2/s
ti=30;// degree C
ta=110;// degree C
tau=1.5*60;// seconds

taumax=L^2/(4*a*0.25);
disp("s",taumax,"maximum time that the slab be treated asa semi infinite body taumax=")
x=L/2;
M=x/(2*(a*tau)^0.5);
//erfM=0.47=T1;
T1=0.47;
t=ta+T1*(ti-ta);
disp("degree C",t,"temperature at the centre of slab T =")


