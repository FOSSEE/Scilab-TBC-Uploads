//Example 12_1
clc();
clear;
//To find the work done by the gas
d1=800         //Units in meter^3
d2=500         //Units in meter^3
p1=5*10^5     //Units in Pa
w1=p1*(d1-d2)*10^-6    //Units in J
p2=2*10^5     //Units in Pa
d3=200*10^-6      //Units in meter^3
p3=3*10^5       //Units in Pa
w2=(p2*d3)+(0.5*p3*d3)      //Units in J
printf("The work done by the gas is=%d J",-(w1+w2))
