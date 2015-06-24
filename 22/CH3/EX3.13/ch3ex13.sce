//signals and systems
//time domain analysis of discreet time systems
//convolution
clear;
close;
clc; 
n=(0:19);
x=0.8^n;
g=0.3^n;
n1=(0:1:length(x)+length(g)-2);
c=convol(x,g);
plot2d3(n1,c);
