clc;funcprot(0);//Example 2.21
//Initilisation of Variables
d=0.05;....//outer diameter of pipe in m
t=0.01;....//thickness of of pipe in cm
K=386;....//thermal conductivity of pipe  W/m*K
Tg=200;....//temparature of hot gas in degrees celcius 
h=30;....//Convective heat transfer coefficient of hot gas in W/m^2*K
Ta=20;....//temparature of ambient air in degrees celcius 
ho=15;....//Convective heat transfer coefficient of ambient air in W/m^2*K
L=1;....// length of the pipe in m
//calculations
di=d-t;....//inner diameter of pipe in m
R1=1/(%pi*di*L*h);....//resistance of inner pipe
R2=log(d/di)/(2*%pi*K*L);....//resistance of pipe
R3=1/(%pi*d*L*ho);....//resistance of outer pipe
Q=(Tg-Ta)/(R1+R2+R3);....//heat loss from the pipe in W/m*length
disp(Q,"heat loss from the pipe in W/m*length:")
