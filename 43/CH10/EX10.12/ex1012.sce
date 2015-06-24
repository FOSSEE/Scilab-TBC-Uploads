//Ex 1012
//Convolution of two sequences
//[1 1 1 1 1]
//[1 2 3]
clc;
n1=0:1:4;
n2=0:1:2;
x=[1 1 1 1 1]
h=[1 2 3]
y=convol(x,h);
l=length(y);
n3=0:1:l-1;
figure
title('Sequence x')
plot2d3(n1,x);
figure
title('Seequence h')
plot2d3(n2,h);
figure
title('Sequence y')
plot2d3(n3,y);