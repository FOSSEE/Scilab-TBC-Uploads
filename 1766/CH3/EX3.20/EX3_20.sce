clc;funcprot(0);//Example 3.20
//Initilisation of Variables
Ti=300;...//Initial temparature of cylindrical iron bar in degrees celcius
Do=0.05;....//diameter of bar in m
h=200;...//heat transfer coefficient on surface of the bar in W/m*K
Ta=30;...//Ambient air temparature in degrees celcius
t=120;....//time for measuring temparature in s
K=60;.....//thermal conductivity of bar in W/m K
al=1.6*10^-5;.....//thermal diffucivity of bar in m^2/s
x=0.03;.....//Distance from the flat surface in m
//calculations
ro=Do/2;.....//Radius of bar in m
invBi1=(K)/(h*ro);....//inverse of biot number for Length of slab
Fo1=(al*t)/(ro)^2;.....//Fourier number for length of slab
teta1=0.6;.....//Value got from hesler chart for slab from 1/Bi=12 and Fo=3.1
E=x/(2*sqrt(al*t));......//Gassian error value 
teta2=erf(E);.....//gassian error 
TA=(teta1*teta2*(Ti-Ta))+Ta;....//Temparature at the axis from the first surface in degrees celcius
disp(TA,"Temparature at the axis from the first surface in degrees celcius:")
