clc;funcprot(0);//Example 2.32
//Initilisation of Variables
R=0.05;....//radius of long cylinder rod in m
qg=3*10^5;....//heat genarated by radioactive materialat constant rate at inner surface in W/m^2
K=10;....//thermal conductivity of cylinder rod in W/m*degrees celcius 
Ta=50;....//temparature of ambient air in degrees celcius
h=60;....//heat transfer coefficient in W/m^2
//calculations
Tw=((qg*R)/(2*h))+Ta;.....//outer surface temparature of cylinder rod in degrees celcius
Tmax=((qg*R^2)/(4*K))+Tw;.....//temparature at center degrees celcius
disp(Tmax,"temparature at center degrees celcius:")
