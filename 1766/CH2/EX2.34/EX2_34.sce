clc;funcprot(0);//Example 2.34
//Initilisation of Variables
R=0.05;....//radius of solid sphere in m
qg=20000;....//heated uniformly at rate at inner surface in W/m^2
K=20;....//thermal conductivity of solid sphere in W/m*degrees celcius 
Ta=25;....//temparature of ambient air in degrees celcius
h=20;....//heat transfer coefficient in W/m^2
//calculations
Tw=((qg*R)/(3*h))+Ta;.....//outer surface temparature of solid sphere in degrees celcius
Tmax=((qg*R^2)/(4*K))+Tw;.....//temparature at center in degrees celcius
disp(Tmax,"temparature at center degrees celcius:")
