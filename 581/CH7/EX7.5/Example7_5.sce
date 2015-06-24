
clear;
clc;

printf("\t Example 7.5\n");

T1 = 293; // air temp.,K
D=0.01; // inner diameter of pipe,m
v=0.7;// air velocity,m/s
T2=333; //pipe wall temp.,K
t=0.25; // distance down the stream
Re=v*D/(1.66*10^-5); // reynolds no.

// the flow is therefore laminar, to account for the thermal entry region, we compute the graetz no.

Gz=Re*(0.709)*D/t;  // graetz no.
Nu=4.32 // nusselt no., Nu=3.657+(0.0668*Gz^(1/3)/(0.04+Gz^(-2/3)))

h=3.657*(0.0268)/D; // average  convective heat transfer coefficient. W/(m^2*K)

a=1-exp((-h/(1.14*1007*v))*(4*t)/D);   // (Tb-T1)/(T2-T1)=a (suppose)

Tb=a*(T2-T1)+T1;    // temperature 0.25 m farther down stream.
Tb1=Tb-270.6;

printf("\t temperature 0.25 m farther down stream is :%.1f C\n",Tb1)
//end