clc();
clear;
//To determine the time required for the proton to reach the maximum height in electric field
u=5*10^5;                        //velocity in m/s
m=1.67*10^-27;                   //mass of proton
q=1.6*10^-19;
E=500;                           //electric field
t=((u*m*sind(42))/(q*E))*10^6
printf("The time required for the proton to reach the maximum height in electric field is %f micro sec",t);