
clear;
clc;
printf("\t Example 6_8_a\n");

Ls=1000;              //mass of bone dry solid ais the drying surface
A=55;                 //both upper surafce and lower surface are exposed
v=.75;                //velocity of air
Nc=.3*10^-3;          //in kg/m^2*s
x2=.2;                //moisture content on wet basis  finally after drying
Xcr=0.125;             //crtical moisture content
X1=0.15;              //moisture content on dry basis  intially
X2=0.025;             //moisture content on dry basis  finally after drying
Xbar=0.0;        //equillibrium moisture 

tbar=(Ls/(A*Nc))*((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));

printf("\n the time for drying the sheets from .15 to .025 kg water /kg of dyr solid moisture under same drying conditions is :%f hour",tbar/3600);

//end