//Scilab Code for Example 7.15 of Signals and systems by
//P.Ramakrishna Rao
//Plotting the impulse and step responses
clc;
clear;
syms s t R L;
Y1=(1/s)-(1/(s+(R/L)));
disp(Y1,'Laplace Transform Of differential Equation is:')
y1=ilaplace(Y1,s,t);
disp(y1,'The Step Response of the System is:');
//Taking R/L=1;
for k=0:10;
    y1(k+1)=1-exp(-k);
end
k=0:10;
plot(k,y1);
title('System Response to Step input');
Y2=(1/(s+(R/L)));
disp(Y2,'Laplace Transform Of differential Equation is:')
y2=ilaplace(Y2,s,t);
disp(y2,'The Impulse Response of the System is:');
for k=0:10;
    y2(k+1)=exp(-k);
end
figure(1);
k=0:10;
plot(k,y2);
title('System Response to impulse input');
