//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.5
//edition 1
//publishing place:Thomson Learning
clc;
clear;
Vsrms=110;//The voltage on the ac side in volts
R=5;//Resistance value of the resistive load in ohm
Vrms=55;//voltage across the load
//iteration method
xold=1;//assumed value 
x=(180/%pi)*(2.25+(sind(2*xold)/2));
err=100;//assumed value
while(err>0.0001)
    xnew=(180/%pi)*(2.25+(sind(2*x)/2));
    x=xnew;
    err=abs(xnew-xold);
    xold=x;
   end
disp(x,'The triggering angle in degree is')
P=(Vrms)^2/R;
disp(P,'The load power in watt is:')
//The answer given in the book is wrong
