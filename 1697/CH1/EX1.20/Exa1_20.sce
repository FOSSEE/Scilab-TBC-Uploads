//Exa 1.20
clc;
clear;
close;
//given data :
disp("Hfi = (Im*dlsin(theta)/(4*%pi))*[cos(omega*t1)/r-omega*sin(omega*t1)/(c*r)]");
disp("200(Im*dlsin(theta)/(4*%pi))*(sin(omega*t1)/r^2)=(Im*dlsin(theta)/(4*%pi))*(-omega*sin(omega*t1)/(c*r))");
disp("200*cos(omega*t1)/r^2 = -omega*sin(omega*t1)/(c*r)");
disp("r=200*lambda/(2*%pi);//in Meter")
disp("r = "+string(200/(2*%pi))+"lambda");