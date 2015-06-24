//Ex 1013
//Convolution of two sequences
//To plot the step response
//[.25 .25 .25 .25]
//[.25 -.25 .25 -.25]
clc;
n1=0:1:8;
n2=0:1:8;
h1=[0 0 0 .25 .25 .25 .25 0 0]
h2=[0 0 0 .25 -.25 .25 -.25 0 0]
y=convol(h1,h2);
l=length(y);
n3=0:1:l-1;
figure
title('Sequence h1')
plot2d3(n1,h1);
figure
title('Seequence h2')
plot2d3(n2,h2);
figure
title('Sequence y')
plot2d3(n3,y);