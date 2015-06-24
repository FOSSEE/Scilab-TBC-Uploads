//Scilab Code for Example 7.25 of Signals and systems by
//P.Ramakrishna Rao
//Plotting the impulse and step responses
clc;
clear;
syms z a n;
Y1=(2*z/(z-a));
disp(Y1,'Z Transform Of differential Equation is:')
y12=2*a^n;
disp(y12,'The Unit Sample Response of the System is:');
y2=2*(a^n-1)/(a-1);
disp(y2,'The Step Response of the System is:');
q=1;
a=0.5;
for k=0:0.1:5;
y2(q)=2*((a^k-1)/(a-1));
q=q+1;
end
k=0:0.1:5;
plot(k,y2);

