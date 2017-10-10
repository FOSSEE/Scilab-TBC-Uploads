//Example 19_2
clc();
clear;
//To find how large is the average EMF induced
b=0.5        //Units in T
a=4*10^-4        //Units in meters^2
phi2=b*a          //Units in Wb
phi1=0          //Units in Wb
deltaPHI=phi2-phi1     //Units in Wb
n=100       //Units in Constant
deltaT=2*10^-2        //Units in sec
emf=(n*deltaPHI)/deltaT        //Units in V
printf("The average emf Induced is emf=%d V",emf)
