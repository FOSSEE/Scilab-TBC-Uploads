
//example 9.10
//page 333
clc; funcprot(0);
//initialisation of variable
f1=0.021//friction in pipe 1
d1=0.2;
k=f1*(10+50+30+20+100)/d1^5+2*0.9/d1^4+10/d1^4+2*1.2/d1^4;//k=(HL)1/(16Q^2/2pi^2g)
f2=0.023//friction pipe 2
d2=0.15;
L2=k*d2^5/f2;
disp(L2,"length of pipe2 (m)=")
clear
