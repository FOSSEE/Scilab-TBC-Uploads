clc;funcprot(0);//Example 3.7
//Initilisation of Variables
Ti=800;...//Initial temparature of carbon steel in degrees celcius
Ta=30;...//Temparature of oil bath in degrees celcius
T=500;...//Temparature for required time in degrees celcius
x=0.02;....//depth of slab from surface in m
K=54;.....//thermal conductivity of carbon steel in W/m K
al=1.474*10^-5;.....//thermal diffucivity of carbon steel in m^2/s
//calculations
E=erfinv((T-Ta)/(Ti-Ta));.....//error funtion value
t=(x/(2*sqrt(al)*E))^2;.....//time needed to cool the slab to 500 C in s
disp(t,"time needed to cool the slab to 500 C in s:")
