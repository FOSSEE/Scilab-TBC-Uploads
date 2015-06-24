clc
clear
//DATA GIVEN
b=0.2;                      //width of the belt in m
t=0.01;                     //thickness of the belt in m
Tp=2;                       //permissible tension of the belt in MN/m^2
ratio=1.8;                  //ratio of T1/T2=1.8
rho=1100;                   //density of the material in kg/m^3

Tmax=Tp*10^6*b*t;           //maximum safe tension of the belt
//we know centrifugal tension, Tc=Tmax/3
Tc=Tmax/3;
//centrifugal tension, Tc=m*v^2
m=(b*t)*1*rho;              //mass of the belt per unit metre length
v=(Tc/m)^0.5;               

T1=Tmax-Tc;                 //tension in the tight side in N
T2=T1/ratio;                //tension in the slack side in N
P=(T1-T2)*v;                //power transmitted by the belt in watts

printf(' (i) The Velocity of the belt is: %3.1f m/s. \n',v);
printf(' (ii) The Maximum power transmitted by the belt is: %2.2f kW. \n',(P/1000));
