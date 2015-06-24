//example 10.4
clc; funcprot(0);
q=0;
Gamma=18;
L=25;
c=35;
T=4;
H=7;
B1=4;//B'
B11=T*sqrt(2);//B''
FS=(5.14*c*(1+B11*0.2/L)+c*H/B1)/(Gamma*H+q)
disp(FS,"factor of safety is")

