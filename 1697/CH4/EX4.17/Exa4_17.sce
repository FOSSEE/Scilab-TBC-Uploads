//Exa 4.17
clc;
clear;
close;
//given data :
MainBeamwidth=45;//in degree
thetaN=MainBeamwidth/2;//in degree
thetaN=thetaN*%pi/180;//in radian
m=5;//no. of elements
//given : d=lambda/2 in meter
x=cos(%pi/(2*(m-1)));
xo=x/cos((%pi/2)*sin(thetaN));//unitless
disp("E5=ao*z+a1*(2*z^2-1)+a2*(8*z^4-8*z^2+1)");
disp("We Know that : z=x/xo, E5=T4*xo");
disp("ao=a1*(2*(x/xo)^2-1)+a2*[8*(x/xo)^4-8*(x/xo)^2+1]=8*x^4-8*x^2+1");
disp("By comparing the term we have : ");
disp("a2=xo^4  a1=4*a2-4*xo^2  ao=1+a1-a2 ")
a2=xo^4;
a1=4*a2-4*xo^2;
ao=1+a1-a2;
disp("And therefore the 5 elements array is given by : ");
disp(string(a2)+"  "+string(a1)+"  "+string(2*ao)+"  "+string(a1)+"  "+string(a2));