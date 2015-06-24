clc;funcprot(0);//Example 2.30
//Initilisation of Variables
r1=5;....//inner radius of hallow cylinder in m
r2=15;....//outer radius of hallow cylinder in m
r=0.05;....//inner radius of hallow cylinder in m
q=10^5;....//heat transfer rate at inner surface in W/m^2
T1=1000;....//temparature of inner surface in degrees celcius
h=450;....//heat transfer coefficient in W/m^2
K=75;....//thermal conductivity of cylinder in W/m*K 
//calculations
T2=T1-((q*r*log(r2/r1))/K);.....//Outside surface temparature of cylinder in degrees celcius
disp(T2,"Outside surface temparature of cylinder in degrees celcius:")
//The Answer arraived is found to be wrong when calculate
