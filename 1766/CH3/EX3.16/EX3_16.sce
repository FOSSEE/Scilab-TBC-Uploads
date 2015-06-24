clc;funcprot(0);//Example 3.16
//Initilisation of Variables
Ti=30;...//Initial temparature of potato in degrees celcius
Ta=100;...//Temparature of boilled water in degrees celcius
ro=0.05;....//Radius of potato in m
h=6000;...//heat transfer coefficient on surface of the potato in W/m*degrees celcius
To=95;....//Temparature at center of potato at required time in degrees celcius
d=1000;.....//density of potato in kg/m^3
C=4.2*10^3;.....//specific heat of potato in kJ K
K=0.68;.....//thermal conductivity of potato in W/m K
al=1.6*10^-7;.....//thermal diffucivity of potato in m^2/s
//calculations
Bi=(h*ro)/K;....//biot number
teta1=(To-Ta)/(Ti-Ta);.....//
Fo=0.35;......//Fourier number got from the same chart in teta1=0.071 and 1/Bi=0.002
t=((Fo*ro^2)/al);......//Time required for center temparature of potato to reach  95 C in s
V=((4/3)*%pi*ro^3);.....//Volume of potato in m^3
Q=(d*C*V*(Ti-Ta))/1000;...//Energy transfer to potato during this time in kJ
disp(t,"Time required for center temparature of potato to reach  95 C in s:")
disp(-Q,"Energy transfer to potato during this time in kJ:")
