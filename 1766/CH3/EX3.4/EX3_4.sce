clc;funcprot(0);//Example 3.4
//Initilisation of Variables
Ti=300;...//Initial temparature of Tungsten steel in degrees celcius
Ta=30;...//Temparature of air in degrees celcius
D=0.01;....//diameter of sphere in m
h=100;...//heat transfer coefficient on surface in W/m*k
T=100;...//Temparature for required time in degrees celcius
d=7897;.....//density of Tungsten steel in kg/m^3
C=0.452;.....//specific heat of Tungsten steel in kJ/kg K
K=73;.....//thermal conductivity of Tungsten steel in W/m K
al=2.026*10^-5;.....//thermal diffucivity of Tungsten steel in m^2/s
//calculations
ro=D/2;....//radius of sphere in m
A=4*%pi*ro^2;...//area of sphere in m^2
V=(4/3)*%pi*ro^3;....//volume of sphere in m^3
Lc=ro/3;....//characteristic length of a ball in m
Bi=(h*Lc)/(K);....//biot number 
t=(-Lc^2*(log((T-Ta)/(Ti-Ta))))/(al*Bi);...//time required for rod to reach 100 C temparature in s
t1=60;...//time taken for instatanious heat transfer rate in s
Fo=(al*t1)/Lc^2;....//Fourier number 
Qt=-h*A*(Ti-Ta)*exp(-(Bi*Fo));....//instantanious heat transfer rate after 1 min in W
Qtot=d*V*C*(Ti-Ta)*[exp(-(Bi*Fo))-1];....//total energy transfer in 1 min in kW
disp(t,"(i)time required for rod to reach 100 C temparature in s:")
disp(-Qt,"(ii)instantanious heat transfer rate after 1 min in W:")
disp(-Qtot,"(iii)total energy transfer in 1 min in kW:")
