clc;
clear;
format('v',6);
disp("the parametric equations of the straight line are:x=1-t,y=1-t,z=1-t for 0<=t<=1");
c1=integrate('1.5*t-1.5','t',0,1);   //using parametric equation
disp(c1,"the line integral is=");

