//Calculating primary current and primary power factor
//Chapter 3
//Example 3.10
//page 211
clear;
clc; 
disp("Example 3.10")
V1=6600;                    //primary voltage in volts
V2=240;                     //secondary voltage in volts
kW1=10;                     //power
phi1=acosd(0.8);
I2=50;                       //current in amperes
kW3=5;                       //power
phi2=acosd(0.7)
kVA=8;                       //rating
phi4=acosd(0.6)         
I1=(kW1*1000)/(cosd(phi1)*V2);
I3=(kW3*1000)/(1*V2);
I4=(kVA*1000)/V2;
Ih=((I1*cosd(phi1))+(I2*cosd(phi2))+I3+(I4*cosd(phi4)));
Iv=((I1*sind(phi1))+(I2*sind(phi2))-(I4*sind(phi4)));
I5=sqrt((Ih^2)+(Iv^2))
printf("I5=%dA",I5)
Ip=(I5*V2)/V1;
printf("\nThe current drawn by the primary from 6600Vmains is equal to,Ip=%fA",Ip);
phi=atand(Iv/Ih);
printf("\npower factor=%flagging",cosd(phi))