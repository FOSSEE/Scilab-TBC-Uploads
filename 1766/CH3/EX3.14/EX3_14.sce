clc;funcprot(0);//Example 3.14
//Initilisation of Variables
Ti=1000;...//Initial temparature of iron rod in degrees celcius
Ta=50;...//Temparature of oil bath in degrees celcius
Do=0.1;....//diameter of rod in m
h=500;...//heat transfer coefficient on surface of the rod in W/m*K
t=600;....//time for measuring temparature in s
d=7850;.....//density of iron plate in kg/m^3
C=460;.....//specific heat of iron rod in kJ K
K=60;.....//thermal conductivity of iron rod in W/m K
al=2.0*10^-5;.....//thermal diffucivity of iron rod in m^2/s
L=1;.....//Length of iron rod in m^2 
//calculations
ro=Do/2;.....//Radius of rod in m
Lc=ro/2;....//characteristic length of a slab in m
Bi=(h*Lc)/K;....//biot number Since it is >.1use heislers chart to solve it 
Bi=(h*ro)/K;....//biot number
Fo=(al*t)/ro^2;....//Fourier number 
teta1=0.02;...//value got by heisler chart 
To=(teta1*(Ti-Ta))+Ta;....//center line temparature after 10 min in degrees celcius
teta2=(To-Ta)/(Ti-Ta);.....//
Fo=2.5;......//Fourier number got from the same chart in teta2=0.16 and 1/Bi=2.4 
t=(Fo*ro^2)/al;......//Time taken for center line temparature to reach 200 C in s
teta3=0.92;.....//Value got from dimention less heat transfer chart of Bi=0.42 and Bi^2*Fo=0.43
V=(%pi*Do^2*L)/4;.....//Volume of rod in m^3
Qo=(d*C*V*(Ti-Ta));...//Heat transfer in iron plate in J/m^2
Q=(teta3*Qo);.....//Heat transfer to the fluid after 120 sec in J/m^2
disp(To,"(i)center line temparature after 10 min in degrees celcius:")
disp(t,"(ii)Time taken for center line temparature to reach 200 C in s:")
disp(Q,"(iii)Heat loss from the in J/m^2:")
