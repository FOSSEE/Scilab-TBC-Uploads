//Example 10.5: Energy returned to the line
clc;
clear;
close;
//given data :
W=500;//in tonne
G=(20*100)/1000;// gradient in %
eta=75/100;// efficiency
V=40;// in kmph
r=40;//N/tonne
Ft=(W*r)-(98.1*W*G);//tractive effort in N
P=(-Ft*V)/3600;// Power available in kW
Pf=round(P*eta);
disp(Pf,"power fed into the line,Pf(kW) = ")
