//Exa 6.1
clc;
clear;
close;
//given data
// (i) when
x=.3;// in m
T_s=100;// in degree C
T_infinite=30;// in degree C
T_f=(T_s+T_infinite)/2;// in degree C
T_f=T_f+273;// in K
Bita=1/T_f;
// Other fluid properties at film temperature
Pr=0.703;
K=0.0301;// in W/mK
T=1.8*10^-5    ;// in m^2/s
g=9.81;
del_T=T_s-T_infinite;
Gr=(g*Bita*del_T*x^3)/T^2;
Ra=Gr*Pr;
disp("Rayleigh Number is : "+string(Ra));
//Since Ra<10^9, hence flow is laminar, then correlation for vertical plate in laminar flow
// Formula Nu=0.59*Ra^(1/4)=h*x/K
h=0.59*Ra^(1/4)*K/x;// in W/m^2K
A=2*.3*.5;
q1=h*A*(T_s-T_infinite);
disp("Heat transfer rate from the plate, when the vertical height is 0.3 m : "+string(q1)+" W");

//(ii) when
x=0.5;// in m
Gr=(g*Bita*del_T*x^3)/T^2;
Ra=Gr*Pr;
// Formula Nu=0.59*Ra^(1/4)=h*x/K
h=0.59*Ra^(1/4)*K/x;// in W/m^2K
q2=h*A*(T_s-T_infinite);
disp("Heat transfer rate from the plate, when the vertical height is 0.5 m : "+string(q2)+" W");
PercentageDecrease=(q1-q2)/q1*100;
disp("Percentage decreases in heat transfer rate when x=0.5 m as compared to when x=0.3 m is : "+string(PercentageDecrease)+" %")

//Note : In the book ,In part (b), calculation of getting the value of h is wrong 