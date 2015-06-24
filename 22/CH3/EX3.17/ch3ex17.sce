//signals and systems
//time domain analysis of discreet time systems
//convolution by sliding tape method
clear;
close;
clc;
n=(0:10)';
y=[4;13;zeros(length(n)-2,1)];
x=(3*n+5).*(n>=0);
for k=1:length(n)-2
    y(k+2)=5*y(k+1)-6*y(k)+x(k+1)-5*x(k);
end
clf;
plot2d3(n,y); xlabel('n'); ylabel('y[n]');
disp('n                         y');
disp(msprintf('%f\t\t%f\n',[n,y]));