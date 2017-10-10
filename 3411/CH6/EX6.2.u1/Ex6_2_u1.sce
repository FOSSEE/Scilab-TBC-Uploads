//Example 6_2_u1
clc();
clear;
//To calculate the Electric field of a bulb
power=10       //units in Watts
r=10           //units in meters
area=4*%pi*r^2        //units in meter^2
i=(100*power)/area         //Units in Watt/meter^2
c=3*10^8   //units in meter/sec
u=4*10^-7       //units in SI
n=1
E0=sqrt((i*2*c*u)/n)    //units in Volt/meter
printf("The electric field of the bulb is E0=%.2f Volt/meters",E0)
//In text book answer is given E0=2.4 V/m but the correct answer is E0=13.82 V/m 
