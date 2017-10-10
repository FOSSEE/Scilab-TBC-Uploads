//Example 21_3
clc();
clear;
//To find the values of Eo and Bo in the wave
power=1000       //Units in W
r=10000       //units in meters
area=4*%pi*r^2      //units in meter^2
P_a=power/area        //unts in W/meter^2
c=3*10^8       //units in meters/sec
eeo=8.85*10^-12     //units in C^2/N*meter^2%.5f 
eo=sqrt((2*P_a)/(c*eeo))           //units in N/C
bo=eo/c        //Units in T
printf("The value of Eo=%.5f N/C\n The value of Bo=",eo)
disp(bo)
printf("T")
