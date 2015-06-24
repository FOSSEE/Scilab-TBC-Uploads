clc;funcprot(0);//Example 2.31
//Initilisation of Variables
r1=0.1;....//inner radius of hallow sphere in m
r2=0.2;....//outer radius of hallow sphere in m
q=1.6*10^5;....//heat transfer rate at inner surface in W/m^2
K=40;....//thermal conductivity of cylinder in W/m*K 
T2=0;....//temparature of outer surface in degrees celcius
//calculations
T1=((q*r1*(r2-r1))/(K*r2))+T2;.....//Outside surface temparature of cylinder in degrees celcius
disp(T1,"inner surface temparature of cylinder in degrees celcius:")
