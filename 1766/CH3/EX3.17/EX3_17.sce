clc;funcprot(0);//Example 3.17
//Initilisation of Variables
Ti=175;...//Initial temparature of cylindrical bar in degrees celcius
Do=0.06;....//diameter of bar in m
L=0.03;....//Height of bar in m
h=250;...//heat transfer coefficient on surface of the bar in W/m*K
Ta=25;...//Ambient air temparature in degrees celcius
t=60;....//time for measuring temparature in s
K=200;.....//thermal conductivity of bar in W/m K
al=8.4*10^-5;.....//thermal diffucivity of bar in m^2/s
//calculations
ro=Do/2;.....//Radius of rod in m
Bi=(h*ro)/K;....//biot number
Fo=(al*t)/ro^2;....//Fourier number 
teta1=0.7;....//Value got from hesler chart from 1/Bi=26.7 and Fo=5.6
invBi1=(2*K)/(h*L);....//inverse of biot number for infinate slab
Fo1=(al*t)/(L/2)^2;.....//Fourier number for infinate slab
teta2=0.6;....//Value got from hesler chart for slab from 1/Bi=53.3 and Fo=22.4
teta3=teta1*teta2;....//Realtion for dimentionless temparature for short cylinder
To=((Ti-Ta)*teta3)+Ta;.....//Center temparature of the cylinder in degrees celcius
disp(To,"Center temparature of the cylinder degrees celcius:")
