clc;funcprot(0);//Example 3.1
//Initilisation of Variables
Ti=500;...//Initial temparature of carbonsteel in degrees celcius
Ta=30;...//Temparature of air in degrees celcius
L=0.01;....//Thickness of slab in m
d=7833;.....//density of carbon steel in kg/m^3
C=0.465;.....//specific heat of carbon steel in kJ/kg K
t=60;...//time taken to change in temparature in s 
K=38.5;.....//thermal conductivity of carbon steel in W/m K
al=1.474*10^-5;.....//thermal diffucivity of carbon steel in m^2/s
h=40;...//heat transfer coefficient on surface of the slab in W/m*k
//calculations
Lc=L/2;....//characteristic length of a slab in m
Bi=(h*Lc)/K;....//biot number 
Fo=(al*t)/Lc^2;....//Fourier number 
T=((Ti-Ta)*exp(-(Bi*Fo)))+Ta;...//temparature of slab after one minute in degrees celcius
disp(T,"temparature of slab after one minute in degrees celcius:")
