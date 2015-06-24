//signals and systems
//time domain analysis of discreet time systems
//convolution by sliding tape method
clear;
close;
clc; 
x=[-2 -1 0 1 2 3 4];
g=[1 1 1 1 1 1 1 1];
n=(0:1:length(x)+length(g)-2);
c=convol(x,g);
clf;
plot2d3(n,c); xlabel('n'); ylabel('c[n]');
