clc;
clear;
U=15;//ft/sec
b=96;//ft
c=7.5;//ft
W=210;//lb
CD=0.046;
eff=0.8;//power train efficiency
d=2.38*(10^(-3));//slugs/(ft^3)
//W=L
CL=2*W/(d*(U^2)*b*c);
D=0.5*d*(U^2)*b*c*CD;
P=D*U/(eff*550);//hp
disp(CL,"The lift coefficient=")
disp("hp",P,"The power required by the pilot=")
