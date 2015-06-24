clc;funcprot(0);//Example 3.3
//Initilisation of Variables
Ti=900;...//Initial temparature of carbon steel in degrees celcius
Ta=30;...//Temparature of air in degrees celcius
ro=0.05;....//radius of carbon steel ball in m
h=210;...//heat transfer coefficient on surface of the slab in W/m*k
t=30;...//time taken to change in temparature in s 
C=0.465;.....//specific heat of carbon steel in kJ/kg K
K=54;.....//thermal conductivity of carbon steel in W/m K
al=1.474*10^-5;.....//thermal diffucivity of carbon steel in m^2/s
//calculations
Lc=ro/3;....//characteristic length of a ball in m
Bi=(h*Lc)/(K);....//biot number 
Fo=(al*t*60)/Lc^2;....//Fourier number 
T=((Ti-Ta)*exp(-(Bi*Fo)))+Ta;...//temparature of slab after one minute in degrees celcius
disp(T,"Center point temparature of sphere after 30 minutes in degrees celcius:")
