// Example 2.10:Number of modes
clc;
clear;
close;
NA=0.2
a=40;// core radius in micro meters
h=1;//wavelngth in micro meters
v=(2*%pi*(a/2)*NA)/h;//Normalised wavelngth
m= round (v^2/4);// number of modes
disp(m,"number of modes")


