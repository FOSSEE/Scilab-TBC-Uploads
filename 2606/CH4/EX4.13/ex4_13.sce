//Page Number: 4.16
//Example 4.13
clc;
//Given
//x(t)=10cos((2*pi*10^8*t)+(200cos(2*pi*10^3*t)))
//on differentiating
//wi=2*pi*(1D+8)-4*pi*sin(2*pi*(1D+3)*t)
//Therefore
delw=4*%pi*(1D+5);
wm=2*%pi*(1D+3);

B=delw/wm;
wb=2*(B+1)*wm;
fb=wb/2*%pi;

disp("rad/s",wb, "Wb");

disp("Hz",fb, "Fb");

