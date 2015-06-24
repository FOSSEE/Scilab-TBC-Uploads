//signals and systems
//time domain analysis of discreet time systems
//convolution by sliding tape method
clear;
close;
clc;
n=(0:10)';
y=[0;zeros(length(n)-1,1)];
x=(n+1)^2;
for k=1:length(n)-1
    y(k+1)=y(k)+x(k);
end;
clf;
a=gca();
plot2d3(n,y);xtitle('sum','n')
plot(n,y,'b.')