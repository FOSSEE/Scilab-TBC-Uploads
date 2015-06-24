////Example 4_17
clc;
clear;close;

//Given data: 
V=200;//V
R=2;//ohm
L=10/1000;//H
E=20;//V
T=1000/10^6;//s
Ton=300/10^6;//s

//Solution :
f=1/T;//Hz
alfa_min=1/(R*T/L)*log(1+E/V*(exp(R*T/L)-1));//duty cycle
alfa=Ton/T;//duty cycle
disp(alfa_min,"Minimum value required of alfa");
disp(alfa,"Actual value of alfa");
disp("Load current is continuous as alfa_actual>alfa_min")
Imax=V/R*[(1-exp(-alfa*T*R/L))/(1-exp(-T*R/L))]-E/R;//A
Imin=V/R*[(exp(alfa*T*R/L)-1)/(exp(T*R/L)-1)]-E/R;//A
disp(Imax,"Maximum current(A)");
disp(Imin,"Minimum current(A)");
Iavg=(alfa*V-E)/R;//A
disp(Iavg,"Average load current(A)");
Iavg_in=alfa*(V-E)/R-L/R/T*(Imax-Imin);//A
disp(Iavg_in,"Average input current(A)");
