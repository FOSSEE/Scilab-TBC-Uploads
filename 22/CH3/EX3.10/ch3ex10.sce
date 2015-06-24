//signals and systems
//time domain analysis of discreet time systems
//total response with initial conditions
clear;
close;
clc; 
n=(-2:10)';
y=[25/4;0;zeros(length(n)-2,1)];
x=[0;0;4^-n(3:length(n))];
for k=1:length(n)-2
    y(k+2)=0.6*y(k+1)+0.16*y(k)+5*x(k+2);
end;
clf;
a=gca();
plot2d3(n,y);

y1=[25/4;0;zeros(length(n)-2,1)];
x=[0;0;4^-n(3:length(n))];
for k=1:length(n)-2
    y1(k+2)=-6*y1(k+1)-9*y1(k)+2*x(k+2)+6*x(k+1);
end
figure 
a=gca();
plot2d3(n,y1);


y2=[25/4;0;zeros(length(n)-2,1)];
x=[0;0;4^-n(3:length(n))];
for k=1:length(n)-2
    y2(k+2)=1.56*y2(k+1)-0.81*y2(k)+ x(k+1)+3*x(k);
end
figure 
a=gca();
plot2d3(n,y2);
