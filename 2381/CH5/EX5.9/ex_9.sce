//Example 9 //amplitude,frequency,velocity ,wavelength and speed
clc;
clear;
close;
//y=5*sin*(4t-0.02x);//given
a=5;//cm 
h=(2*%pi)/0.02;//
v=0.02*10000;//cm/s
n=v/h;//cycles/seconds
disp(a,"amplitude is,(cm)=")
disp(n,"frequency is,(cycles/s)=")
disp(v,"velocity is,(cm/s)=")
disp(h,"wavelength is,(cm)=")
ma1x=a*4;//cm/s
disp(ma1x,"maximum speed is,(cm/s)=")
