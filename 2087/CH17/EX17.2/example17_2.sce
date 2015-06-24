

//example 17.2
//design a submerged pipe
clc;funcprot(0);
//given
q=0.04;         //discharge through outlet
D=100.0;         //F.S.L of distributing canal
wc=99.90;      //F.S.L of water course
dep=1.1;       //full supply depth distributing canal
C=0.7;         //average value of coefficient of discharge
g=9.81;      //acceleration due to gravity

H=D-wc;          //available head
A=q/(C*(2*g*H)^0.5);
d=(4*A/%pi)^0.5*100;
d=round(d*10)/10;
mprintf("diameter of pipe required=%f cm.",d);
mprintf("\nuse pipe of diameter 25 cm.");
