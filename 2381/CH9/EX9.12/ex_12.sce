//Example 12// equation,frequency,amplitude ,wavelength and distance
clc;
clear;
close;
//y=6*(sin(2*%pi*x)/6)*cos(160*%pi*t);//given equation
a=3;//cm
T=(2*%pi)/(160*%pi);//sec
h=((2*%pi*6)/(2*%pi));//cm
disp("wave equation is 3*sin((160*%pi*t)+(2*%pi*x)/6)")
disp(a,"amplitude is ,(cm)=")
disp(1/T,"frequency is ,(Hz)=")
disp(h,"wavelength is,(cm)=")
db=h/2;//
disp(db,"distance between consecutive antinodes is,(cm)=")
