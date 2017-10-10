//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.6
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
R=10;//resistance of the load in ohm
L=0.03;//inductance in H
Vrms=100;//source voltage in volt
f=60;//frequency in Hz
alpha=60;//triggering angle in degree
omega=2*%pi*f;
tau=L/R;
Q=atand((omega*L)/R);
//iteration method
xold=1;//assumed value 
x=Q+asind(sind(Q-alpha)*exp((-1)*(((xold-alpha)*(%pi/180))/(omega*tau))));
err=10;//assumed value
while(err>0.01)
    xnew=Q+asind(sind(Q-alpha)*exp((-1)*((x-alpha)*(%pi/180)/(omega*tau))));
    x=xnew;
    err=abs(xnew-xold);
    xold=x;
   end
disp(x,'The value of beta in degree is')
r=x-alpha;
disp(r,'The conduction period in degree is ')
//The answer given in the book is wrong.While using the book answer both LHS and RHS are not equal.
