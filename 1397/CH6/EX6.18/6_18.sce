//clc();
clear;
//To calculate braggs angle for first order of reflection
V=5000;        //potential difference in V
n=1;
h=1;
k=1;
l=1;
d=0.204*10^-9;     //inter planar spacing in m
H=6.625*10^-34;     //plancks constant in J
m=9.1*10^-31;
e=1.6*10^-19;
lambda=H/(sqrt(2*m*e*V));
disp(lambda);
a=(n*lambda)/(2*d);
theta=asind(a);
printf("bragg angle in degrees is");
disp(theta);
