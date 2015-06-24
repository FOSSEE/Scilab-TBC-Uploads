//example 4.4
clc; funcprot(0);
B=1;
L=1.5;
c2=48;
ca=108;
D=1;
H=1;
Gamma=16.8;
FS=4;
qu=(1+0.2*B/L)*5.14*c2+(1+B/L)*2*ca*H/B+Gamma*D;
c1=120;
gamma1=16.8;
Df=1;
qt=(1+0.2*B/L)*5.14*c1+gamma1*Df;
disp(qt,"qt in kN/m^2");
disp("no need to calculate qt since it is not useful for calculation")
disp(qu/FS,"allowable shear stress in kN/m^2");
disp(qu/FS*1*1.5,"allowable load in kN");
clear()
