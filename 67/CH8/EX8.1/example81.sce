//Example 8.1
//Determine the convolution of the two finite duration sequence
clc;
x=[1,1,1];
n1=-1:1;
h=[1,1,1];
n2=-1:1;
y=convol(x,h);
n=-2:1:2;
disp(y,'y[n]=');
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
plot2d3(n,round(y),5);
poly1=a.children(1).children (1);
poly1.thickness=2;
xtitle('Plot of sequence y[n]','n','y[n]');
funcprot(0);