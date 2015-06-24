clc;funcprot(0);//Example 2.16
//Initilisation of Variables
r1=0.04;....//inner radius of hallow sphere in m
r2=0.06;....//outer radius of hallow sphere  in m
q=10^5;....//heat transfer rate at inner surface in W/m^2
Ta=100;....//temparature of fluid in degrees celcius
h=450;....//heat transfer coefficient in W/m^2
K=20;....//thermal conductivity of sphere in W/m*K 
//calculations
R1=(r2-r1)/(4*%pi*K*r1*r2);.....//resistance of inner layer  in degrees celcius/W
R2=1/(4*%pi*h*r2^2);.....//resistance of inner layer  in degrees celcius/W
Q=(4*%pi*r1^2*q);.....//hear transfer in hallow sphere in W/m^2
T2=(Q*R2)+Ta;.....//Outside surface temparature of sphere in degrees celcius
disp(T2,"Outside surface temparature of sphere in degrees celcius:")
