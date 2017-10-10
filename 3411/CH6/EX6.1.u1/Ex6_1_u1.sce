//Example 6_1_u1
clc();
clear;
//To calculate the Electric field of a laser beam
power=1          //units in milli Watts
power=power*10^-3       //units in Watts
area=3       //units in milli meter^2
area=area*10^-6      //units in meter^2
i=power/area         // units in Watts/meter^2
c=3*10^8   //units in meter/sec
u=4*10^-7       //units in SI
n=1
E0=sqrt((i*2*c*u)/n)    //units in V/meters
printf("The electric field is E0=%.2f V/m",E0)
//In text book answer is given E0=501 V/m but the correct answer is E0=282.84 V/m 
