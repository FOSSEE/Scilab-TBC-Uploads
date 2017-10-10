clc;
clear all;
disp("temperation variation")
L=60/2000;//m
k=42.6;// W/(m.C)
a=0.043;// m^2/h
ti=440;// degree C
h=235;// W/(m^ 2.C)
ta=50;// degree C
tau=4.3*60;//seconds
Lc=L;// characteristic length
Fo=a*tau/Lc^2;
Bi=h*Lc/k;
if Bi>1
disp("Internal temperature gradients are not small and can not be neglected")
end
Bii=1/Bi;
x=0;// midplane
//(to-ta)/(ti-ta)=0.6
to=0.6*(ti-ta)+ta;
disp("Degree C",to,"Temperature at midplane  Tm =")
 x=0.015/L;
 Bii=6.06;
 ti=to;
 //(to-ta)/(ti-ta)=0.97
 to=0.97*(ti-ta)+ta;
 disp("Degree C",to,"Temperature inside the plate 15mm from the midplane To =")
 
