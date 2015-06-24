//signals and systems
//time domain analysis of discreet time systems
//iterative solution
clear;
close;
clc; 
n=(-1:10)';
y=[16;0;zeros(length(n)-2,1)];
x=[0;0;n(3:length(n))];
for k=1:length(n)-1
    y(k+1)=0.5*y(k)+x(k+1);
end;
clf;
size(y)
size(n)
plot2d3(n,y);
plot(n,y,'r.')
disp([msprintf([n,y])]);
