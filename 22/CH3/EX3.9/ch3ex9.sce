//signals and systems
//time domain analysis of discreet time systems
//iterative solution
clear;
close;
clc; 
n=(-2:10)';
y=[1;2;zeros(length(n)-2,1)];
x=[0;0;n(3:length(n))];
for k=1:length(n)-2
    y(k+2)=y(k+1)-0.24*y(k)+x(k+2)-2*x(k+1);
end;
clf;
plot2d3(n,y);
disp([msprintf('%d %d\n',[n,y])]);