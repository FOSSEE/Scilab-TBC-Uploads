//example 1.7
clc; funcprot(0);
//parta
e1=0.92;
e2=0.86;
Hc=2.8;
s2=212;//sigma2dash
s1=140;//sigma1dash
Cc=(e1-e2)/log10(s2/s1);
Sc=Cc*Hc/(1+e1)*log10(s2/s1);
disp(Sc*1000,"consolidated depth in mm");
//part b
Sct=40;
T50=0.197;
t=4.5;
Cr=T50*12.7^2/t;
U=Sct/Sc*100/1000;
H=Hc/2;
Tv=%pi/4*U^2/100^2;
t=Tv*H^2/Cr*1000^2/60/24;
disp(t,"time required in days");


