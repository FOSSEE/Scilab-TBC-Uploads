//Example 2.35 //self capacitance and inductance
clc;
clear;
close;
C1=200;//in pico farads
f1=(2/%pi)*10^6;//in hertz
C2=40;// in pico fards
f2=2*f1;//
CD= ((f1^2*C1*10^-12)-(f2^2*C2*10^-12))/(f2^2-f1^2);//
L=1/(4^2*(C1+CD*10^12));//
disp(CD*10^12,"capacitance in pico farad")
disp(L*10^6,"inductance in micro henry")
