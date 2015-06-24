
clear;
clc;
printf("\t Example 3.2\n");
v=0.30;           //velocity of parallelair in m/s
t=300;            //temperature of air in kelvin
p=10^5/760;                //pressure of air in pascal
Dab=5.9*10^-4;             //diffusivity of naphthalene in in air in m^2/s 
pa1=0.2*10^5/760;          //pressure of air at 1 in pascal
pa2=0;                     //pressure of air at 2 in pascal
d=1.15;                //density of air in kg/m^3
u=0.0185*10^-3;        //viscosity of air in Newton*s/m^2
D=1;                   //length in m
a=1;                   //area of plate in m^2
Nsc=u/(d*Dab);           //schmidt no. calculation
Nre=(D*v*d)/u;        //reynolds no. calculation
                     //flow is turbulent 
f=0.072*(Nre)^-.25;        //friction factor using "chilton colburn" analogy
k_c=(f*v)/(2*(Nsc)^.667);    //mass transfer coefficient
NA=k_c*(pa1-pa2)/(8314*300);    //mass flux calc.
sub=NA*a;                        //rate  of sublimation in kmol/m^2*s
printf("\nrate of sublimation :%f *10^-7 kmol/s\n",sub/10^-7);
//End