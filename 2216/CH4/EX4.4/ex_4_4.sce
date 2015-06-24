// Example 4.4:core diameter
clc;
clear;
close;
format('v',4)
d=0.02;//difference
n1=1.5;//core refrative index
m=1000;// number of modes
h= 1.3;// Wavelenght in micrometers
a=((h/(%pi*n1))*(m/d)^(1/2));//core diamter in micro meter
disp(a,"core diameter in micro meter")

