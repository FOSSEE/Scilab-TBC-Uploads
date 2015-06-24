//Illustrating that a small error in data provided can result in big errors.
//with original equations
//X+Y=2 & X+1.01Y=2.01
clear;
clc;
close();
A=[1 1;1 1.01];
B=[2 2.01]';
x=A\B;
disp(x,'Solutions are :')
x=linspace(-0.5,1.5);
y1=2-x;
y2=(2.01-x)/1.01;
subplot(2,1,1);
plot(x,y1)
plot(x,y2,'r')
xtitle('plot of correct equations','x axis','y axis')
//with the equations having some error in data
//X+Y=2 & X+1.01Y=2.02
A=[1 1;1 1.01];
B=[2 2.02]';
x=A\B;
disp(x,'Solutions are :')
subplot(2,1,2);
x=linspace(-1,1);
y1=2-x;
y2=(2.02-x)/1.01;
plot(x,y1)
plot(x,y2,'r')
xtitle('plot of error having equations','x axis','y axis')