//example 8.6
clc;funcprot(0);
//Initialization of Variable
R=10;//load
V=120;//rms voltage
f=60;//hertz
T=83.3;//ms
t1=15;//ms
t2=55;//ms
//calculation
Tl=1/f;
disp(Tl*1000,"line period in ms:")
Th=Tl/2;
disp(Th*1000,"half-cycle time in ms:")
C=round(T/Th/100)*100;
disp(C/1000,"cycles:")
D1=.2;
V1=round(V*D1^.5);
disp(V1,"voltage for t1 in V:")
P1=V1^2/R;
disp(P1,"power for t1 in W:")
D2=.7;
V2=round(V*D2^.5);
disp(V2,"voltage for t2 in V:")
P2=V2^2/R;
disp(P2,"power for t2 in W:")
clear()
