//Example 6_3_u1
clc();
clear;
//To calculate the electric field intensity a a point
power=1      //units in milli Watts
power=power*10^-3 //units in Watts
r=6        //units in milli meters
r=6*10^-6     //units in meters
area=%pi*r^2        //units in meter^2
i=power/area     //units in Watt/meter^2
c=3*10^8   //units in meter/sec
u=4*10^-7       //units in SI
n=1
E=sqrt((i*2*c*u)/n)    //units in Volt/meters
printf("The electric field intensity a a point is given by E=%.2f Volt/meters",E)
//In text book answer is given E=8.1*10^4 V/m but the correct answer is E=46065.89 V/m 
