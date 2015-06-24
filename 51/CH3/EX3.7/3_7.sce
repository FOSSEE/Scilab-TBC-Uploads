clc;
clear;
dia=0.1;//m
dia1=1.0;//m
h=2.0;//m
//bernoulli's equation: p1+(0.5*d*V1^2)+(sw*z1)= p2+(0.5*d*V2^2)+(sw*z2)
//assuming p1=p2=0, and z1=h and z2=0
//(0.5*d*V1^2)+(g*h)= (0.5*d*V2^2)
//assuming steady flow Q1=Q2, Q=A*V. hence, A1*V1=A2*V2
//V1=((dia/dia1)^2)*V2
//hence V2=((2*g*h)/(1-(dia/dia1)^4))^0.5
V2=((2*9.81*h)/(1-(dia/dia1)^4))^0.5;
Q=(%pi/4*(dia)^2)*V2;
disp("m^3/sec",Q,"The flow rate needed is=")
//let Q0 be the flow rate when v1=0, i.e. dia>>dia
//Q0=(2*g*h)^0.5 and Qrat=Q/Q0
count=1;
i=0:0.05:0.8;

for k=0.00:0.05:0.80
    Qrat(count)=1/((1-(k^4))^0.5);
    count=count+1;
end

plot2d(i,Qrat,rect=[0,1,0.8,1.1])
xtitle("d/D vs Q/Q0","d/D","Q/Q0")
