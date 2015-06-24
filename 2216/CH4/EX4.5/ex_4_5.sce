// Example 4.5:core diameter
clc;
clear;
close;
format('v',5)
d=0.02;//difference
a1=75;//in micro meter
n1=1.45;//core refrative index
m=700;// number of modes
v=sqrt(4*m);//
h=((2*%pi*(a1/2)*n1*sqrt(2*(d/100)))/v);//in micro meter
vc=2.405*sqrt(2);//for single mode fiber
a=((vc*h)/(%pi*n1*sqrt(2*(d/100))));//core diamter in micro meter
disp(a,"maximum core diameter in micro meter")

