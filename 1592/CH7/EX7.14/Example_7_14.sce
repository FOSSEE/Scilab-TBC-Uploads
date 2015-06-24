//Scilab Code for Example 7.14 of Signals and systems by
//P.Ramakrishna Rao
//Plotting the impulse and step responses
clc;
clear;
syms s t R C;
Y1=(1/(R*C))/(s+1/(R*C));
disp(Y1,'Laplace Transform Of differential Equation is:')
y11=ilaplace(Y1,s,t);
disp(y11,'The Impulse Response of the System is:');
for k=0:10;
    y1(k+1)=exp(-k);
end
k=0:10;
plot(k,y1);
title('System Response to impulse input');
Y2=(1/(R*C))/(s^2+s/(R*C));
disp(Y2,'Laplace Transform Of differential Equation is:')
y22=ilaplace(Y2,s,t);
disp(y22,'The Step Response of the System is:');
for k=0:10;
    y2(k+1)=1-exp(-k);
end
figure(1);
k=0:10;
plot(k,y2);
title('System Response to Step input');
