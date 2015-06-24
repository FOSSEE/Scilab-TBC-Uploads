clc;funcprot(0);//Example 3.15
//Initilisation of Variables
Ti=30;...//Initial temparature of apple in degrees celcius
Ta=5;...//Temparature of air in degrees celcius
ro=0.05;....//Radius of apple in m
h=50;...//heat transfer coefficient on surface of the apple in W/m*degrees celcius
To=10;....//Temparature at center of apple at required time in degrees celcius
d=1000;.....//density of apple in kg/m^3
C=4.2*10^3;.....//specific heat of apple in kJ K
K=0.59;.....//thermal conductivity of apple in W/m K
al=1.4*10^-7;.....//thermal diffucivity of apple in m^2/s
//calculations
Lc=ro/3;....//characteristic length of a apple in m
Bi=(h*Lc)/K;....//biot number Since it is >.1use heislers chart to solve it 
Bi=(h*ro)/K;....//biot number
teta1=(To-Ta)/(Ti-Ta);.....//
Fo=0.5;......//Fourier number got from the same chart in teta1=0.2 and 1/Bi=0.24 
t=((Fo*ro^2)/al)/3600;......//Time required for center of apple to reach  temparature in hr
teta2=0.8;.....//Value got from dimention less heat transfer chart of Bi=4.2 and Bi^2*Fo=8.7
V=((4/3)*%pi*ro^3);.....//Volume of apple in m^3
Qo=(d*C*V*(Ti-Ta));...//Heat transfer in apple in J/m^2
Q=(teta2*Qo)/1000;.....//Heat loss from the apple in kJ/m^2
disp(t,"Time required for center of apple to reach  temparature in hr:")
disp(Q,"Heat from the apple in kJ/m^2:")
