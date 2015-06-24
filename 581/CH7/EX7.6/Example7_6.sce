
clear;
clc;

printf("\t Example 7.6\n");

Tbin=290;     //inlet bulk temp.,K
v=1;          //speed of air, m/s
a=0.09;       //area of steel,m^2
l=15;         //length of duct running outdoors through awarm air,m
To=310;       //temp. of warm air,K
h=5;          //heat transfer coefficient due to natural convection and thermal radiation.
Dh=0.3;       //hydraulic diameter,m
Re=v*Dh/(1.578*10^-5);   //reynolds no.at Tbin
Pr=0.713;   //prandtl no.

f=1/(1.82/2.303*log(Re)-1.64)^2;     // formula for friction factor for smooth pipes

Nu=(f/8*Re*Pr)/(1.07+12.7*(f/8)^(0.5)*(Pr^(2/3)-1));   //formula for nusselt no.in fully developed flow in smooth pipes


h=Nu*0.02623/Dh;    // convective heat transfer coefficient,W/(m^2)/K
//the remaining problem is to find the bulk temperature change.the thin metal duct wall offers little thermal ressistance, but convection ressistance outside the duct must be considered.

U=(1/4.371+1/5)^-1;    //U=1/Ain*(1/(h*A)in+1/(h*A)out)^-1


Tbout=(To-Tbin)*(1-exp(-U*4*l/(1.217*v*1007*Dh)))+Tbin;    //outlet bulk temp., K
Tbt1=Tbout-273;

printf("\t outside bulk temp. change is : %.1f C\n",Tbt1);
//end