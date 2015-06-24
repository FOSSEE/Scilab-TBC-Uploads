
clear;
clc;

printf("\t Example 11.16\n");
T1=298;          //temp.of air,K
T2=323.15;        //film temp.,K
x=0.05;        //mass fraction of water at 75 C
Gm=0.017;       //average mass  transfer coefficient,kg/(m^2*s)
A=0.04;        //suraface area of pan,m^2
l=0.2;        //length of pan in flow direction,m
v=5;        //air speed,m/s
m=(x+0.277)/2;    //film composition of water at 50 C
Mf=26.34;    //mixture molecular weight,kg/kmol
af=101325*Mf/(8314.5*T2);    //film density from ideal gas law,kg/m^3
Uf=1.75*10^-5;    //film viscosity,kg/(m*s)
Vf=Uf/af;    //kinematic viscosity,m^2/s
Rel=v*l/Vf;    //reynolds no. comes out to be 56,800 so the flow is laminar.
B=0.314;     //mass transfer driving force

D=2.96*10^-5;    //diffusivity of water in air,m^2/s
Sc=Vf/D;    //scimidt no.

Nu=0.664*Rel^0.5*Sc^1/3;    //nussselt no.
Gmw1=Nu*(D*A/l);    //appropriate value of mass transfer gas phase coeffficient of water in air,kg/(m^2*s)
Gmw=Gmw1*(log(1+B)/B)+0.0168;    //mass transfer gas phase coeffficient of water in air,kg/(m^2*s)

printf("mass transfer gas phase coeffficient of water in air is : %.4f kg/(m^2*s)\n  In this caes, the blowing factor is 0.870. thus the mild blowing has reduced the mass transfer coefficient by about 13 percent.",Gmw);

//end