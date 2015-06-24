
clear;
clc;
printf("\t Example 3.1\n");
v=6;       //velocity in m/s
l=6;       //length in m
pa1=10;     //pressure at 1 in atm
pa2=0;     //pressure at 2 in atm
t=373;     // temperature in kelvin
p=1;      //pressure of naphthalene in atm at 373kelvin
D=5.15*10^-6;    //diffusivity of naphthalene in C02 in m^2/s
d=0.946;        //density of air in kg/m^3
u=.021*10^-3;         //viscosity of air in Newton*s/m^2
ID=0.075;       //diameter in m
nre=(ID*v*d)/(u);     //calc. of reynolds no.
cf=2*0.023*(nre)^(-0.2);        //friction factor
nsc=(u)/(d*D);        //calc of schmidt no.
kc=(cf*v)/(2*(nsc)^(2/3));
na=(kc*10^5*(pa1/760-0))/(8314*t);   //difussion flux in kmol/m^2*s
sub=na*2*3.14*(ID/2)*l;          //rate of sublimation
printf("\nrate of sublimation :%f *10^-6 kmol/s\n",sub/10^-6);
//End