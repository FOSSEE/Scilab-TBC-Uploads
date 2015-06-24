// Example 4.8//Pulse broadning due to material dispersion
clc;
clear;
close;
ho=1343;//nm
h=850;//in nm
so=0.097;//in ps/nm^2
m(h)=((so*(h/4))*(1-(h/ho))^4);// in ps/nm-km
tgmat=m(h)*70;//in ns/km
dt=tgmat*100;//in ns
disp(dt,"total pulse spread in ns is")
//answer is wrong in the textbook
