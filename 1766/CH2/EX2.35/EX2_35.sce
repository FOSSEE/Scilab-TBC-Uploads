clc;funcprot(0);//Example 2.35
//Initilisation of Variables
d=0.01;....//diameter of iron rod in m
L=0.3;....//length of rod in m
Tb=200;....//temparature of iron rod in degrees celcius
K=65;....//thermal conductivity of iron rod in W/m*degrees celcius 
Ta=20;....//temparature of ambient air in degrees celcius
h=15;....//heat transfer coefficient in W/m^2
x1=0.1;...//distance of rod from the tank in m
x2=0.2;...//distance of rod from the tank in m
//calculations
P=%pi*d*L;...//parameter of rod in m^2
A=(%pi*d^2)/4;.....//area of the rod in m^2
m=sqrt((4*h)/K*d);...//
tetab=Tb-Ta;...//change of temparature in degrees celcius
tetax1=tetab*exp(-(m*100)*x1);....//change of temparature at x1 in degrees celcius
Tx1=tetax1+Ta;...//temparature of iron rod at x1 in degrees celcius
tetax2=tetab*exp(-(m*100)*x2);.....//change of temparature at x2 in degrees celcius
Tx2=tetax2+Ta;....//temparature of iron rod at x2 in degrees celcius
Q=tetab*sqrt(h*P*K*A);....//heat transfer rate in W
Qmax=P*h*tetab;....//Maximum heat transfer rate in W
E=(Q/Qmax)*100;....//efficiency of fin 
e=Q/(A*h*tetab);....//effectiveness of the fin
disp(Tx1,"temparature of iron rod at x1 in degrees celcius:")
disp(Tx2,"temparature of iron rod at x2 in degrees celcius")
disp(Q,"heat transfer rate in W:")
disp(round(E),"efficiency of fin in % ")
disp(e,"effectiveness of the fin")
