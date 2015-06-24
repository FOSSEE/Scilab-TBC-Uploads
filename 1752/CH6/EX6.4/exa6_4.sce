//Exa 6.4
clc;
clear;
close;
//given data
m=15;// in kg
C_p=420;// in J/kg K
T_s=200;// in degree C
T_infinite=30;// in degree C
T_f=(T_s+T_infinite)/2;// in degree C
T_f=T_f+273;// in K
Pr=0.688;
K=0.0321;// in W/mK
delta=23.18*10^-6;// in m^2/s
Bita=1/T_f;
g=9.81;
x=0.3;// in m
del_T=T_s-T_infinite;
Gr=(g*Bita*del_T*x^3)/delta^2;
Ra=Gr*Pr;
//Since Ra<10^9, hence it is laminar flow using the relation
// Formula Nu=0.59*Ra^(1/4)=h*x/K
h=0.59*Ra^(1/4)*K/x;// in W/m^2K
disp("(i) Heat transfer coefficient is : "+string(h)+" W/m^2K")

// (b) Initial rate of cooling
// Formula h*A*(T_s-T_infinite) = m*C_p*dt_by_toh
A=2*0.3*0.5;
dt_by_toh = h*A*(T_s-T_infinite)/(m*C_p);// in degree C/sec
dt_by_toh=dt_by_toh*60;// in degree C /min
disp("(ii) Initial rate of cooling of the plate is : "+string(dt_by_toh)+" degreeC /min");

//(c) Time taken by plate to cool from 200 degree C to 50 degree C
T_i=200;// in degree C
T=50;// in degree C
// Formula (T-T_infinite)/(T_i-T_infinite)= %e^(-h*A*toh/(m*C_p));
toh= -log((T-T_infinite)/(T_i-T_infinite))*m*C_p/(h*A);// in sec
toh=toh/60;// in min
disp("(iii) Time required to cool plate from 200 degree C to 50 degree C is : "+string(toh)+" minutes");