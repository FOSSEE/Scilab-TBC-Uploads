clc;
clear;

printf("\n Example 9.13\n");

d=10e-3; //Diameter of carbide elements
l=0.5; //Length of carbide elements
Ts=1750; //Maximun surface temperature of carbide
P=500e3; //Thermal power output required
sigma=5.67e-8;

//From equation 9.112, the total emissive power is given by:
Eb=sigma*Ts^4;
printf("\n The total emissive power is = %.2f *10^5 W/m^2",Eb*1e-5);
A=%pi*d*l;
printf("\n The area of one element = %.3f *10^-2 m^2",A*1e2);
P1=Eb*A;//Power dissipated by one element
printf("\n Power dissipated by one element = %.3f *10^3 W",P1*1e-3);
n=P/P1; //Number of elements required
printf("\n Number of elements required = %.0f ",n);
