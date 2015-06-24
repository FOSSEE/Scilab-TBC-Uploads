clc
clear
//DATA GIVEN
b=0.25;                     //width of the belt in m
t=0.006;                    //thickness of the belt in m
r=900/2000;                 //radius of the pulley in m
rho=1100;                   //density of the material in kg/m^3
Tp=2;                       //permissible tension of the belt in MN/m^2
ratio=2;                    //ratio of T1/T2=2
N=200;                      //speed of the pulley in R.P.M.

Tmax=Tp*10^6*b*t;           //maximum safe tension of the belt
//centrifugal tension, Tc=m*v^2
m=(b*t)*1*rho;              //mass of the belt per unit metre length
v=2*(%pi)*(r+t/2)*N/60;
Tc=m*v^2;

T1=Tmax-Tc;                 //tension in the tight side in N
T2=T1/ratio;                //tension in the slack side in N
P=(T1-T2)*v;                //power transmitted by the belt in watts


printf(' (i) The Centrifugal tension Tc is: %3.1f N. \n',Tc);
printf(' (ii) The Power transmitted by the belt is: %2.1f kW. \n',(P/1000));
