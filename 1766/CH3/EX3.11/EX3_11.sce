clc;funcprot(0);//Example 3.11
//Initilisation of Variables
Ti=500;...//Initial temparature of the slab in degrees celcius
Ta=30;...//Atmospheric temparature in degrees celcius
h=300;...//heat transfer coefficient on surface in W/m*K
L=0.04;....//thickness of slab in m
x=0.01;....//Distance from the center line where we have to measure in m
t=120;....//time for measuring temparature in s
al=1.2*10^-5;.....//thermal diffucivity of slab in m^2/s
K=42.5;.....//thermal conductivity of copper slab in W/m K
//calculations
Lc=L/2;....//characteristic length of a slab in m
Bi=(h*Lc)/K;....//biot number 
Fo=(al*t)/Lc^2;....//Fourier number 
teta1=0.68;...//value got by heisler chart 
Tm=(teta1*(Ti-Ta))+Ta;....//center line temparature in degrees celcius
teta2=0.95;....//Value got from the position correction chart 
T=(teta2*(Tm-Ta))+Ta;....//Temparature at 10mm at the center line in degrees celcius
disp(Tm,"(i)center line temparature in degrees celcius:")
disp(T,"(ii)Temparature at 10mm at the center line in degrees celcius:")
