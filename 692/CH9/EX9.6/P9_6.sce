//EXAMPLE 9.6
//LP TO LP Transformation

clc;
clear;
z=%z;
w=0:0.001*%pi:%pi;
Glz=(0.0662272*(1+1/z)^3)/((1-0.2593284/z)*(1-0.6762858/z+0.3917468/(z^2)))
wc=0.25*%pi;//Oringinal passband edge
Wc=0.35*%pi;//Required passband edge
l=sin((wc-Wc)/2)/sin((wc+Wc)/2)
disp(l,'lambda = ');
Gdz=horner(Glz,((1-l/z)/(1/z-l)));
disp(Gdz,'The transfer function is Gdz = ');