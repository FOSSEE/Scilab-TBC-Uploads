//Example5.23,Pg5.24
clc;
flkva=100 //Full load kVA given
x=1 //Full load
pf=0.8 //Power factor lagging
A=[1 1;1 -0.64]
B=[2.474;0]
W=A\B
n= (x*flkva*pf/((x*flkva*pf) + W(1) +(x^2)*W(2)))*100
printf("\n Efficiency=%.2f percent \n",n)

