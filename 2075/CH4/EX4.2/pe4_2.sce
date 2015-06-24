//example 4.2
clc; funcprot(0);
// Initialization of Variable
Vi=300;
P=35;
R=8;
pi=3.1428;
S=10000;
fh=20;
//calculation
Vl=(P*R)^.5;
Vp=Vl*2^.5;
Il=Vl/R;
f=S/(2*pi*Vp);
disp(f,"frequency of OPA548 in KHz")
Ao=Vl/Vi;
G=Ao*fh;
disp(G,"slew rate of OPA548 in Mhz")
printf('the OPA548 can be used')
clear()
