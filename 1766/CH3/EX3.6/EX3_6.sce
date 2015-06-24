clc;funcprot(0);//Example 3.6
//Initilisation of Variables
D=0.02;....//diameter of stainless steel in m
d=7865;.....//density of stainless steel in kg/m^3
C=0.46;.....//specific heat of stainless steel in kJ/kg degrees celcius
K=61;.....//thermal conductivity of stainless steel in W/m degrees celcius
Ti=800;...//Uniform temparature of stainless steel in degrees celcius
Ta=50;...//Temparature of oil bath in degrees celcius
h=300;...//heat transfer coefficient for oil lamp and sphere in W/m*k
T=100;...//Temparature for required time in degrees celcius
//calculations
ro=D/2;......//radius of stainless steel in m 
Lc=ro/3;...//charecteristic length in m
al=K/(d*C*1000);...//thermal diffucivity of aluminium rod in m^2/s
Bi=(h*Lc)/K;....//biot number 
t=(-Lc^2*(log((T-Ta)/(Ti-Ta))))/(al*Bi);...//time taken for the ball to reach 100 C temparature in s
disp(t,"time taken for the ball to reach 100 C temparature in s:")
