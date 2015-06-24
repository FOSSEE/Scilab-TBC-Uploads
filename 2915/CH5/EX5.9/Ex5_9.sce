//Example 5.9
//To find the amplitude and period of given function
clear,clc;

//amplitude
x = linspace(-0,4*%pi,200);
y1=3*sin(x); //1st part of given function
amplitude1=y1/sin(x); //amplitude of part 1
y2= 4*cos(x); //second part of given function
amplitude2 =y2/(cos(x)); //amplitude of part 2

//given function is a composition of 2 functions
//Using trigonometric identities, merge them into 1
//the amplitude of resultant is the required amplitude
//In this case the merged function can be sine or cos
//merging sine and cos into sine,
amplitude = sqrt(amplitude1^2 + amplitude2^2);
printf('Amplitude = %f',amplitude);

//period
period_cosx=2*%pi ;//period of cos(x) is 2 pi
period_sinx=2*%pi ;//period of sin(x) is 2 pi
locm = 2*%pi; //lcm of period_sinx and period_cosx
printf('\nRequired period is %f radians',locm);
x = linspace(0,4*%pi,200);
y = 3*sin(x) +4*cos(x);
set(gca(),"grid",[5 5]);
plot(x,y,'r');
xlabel("$0\le x\le 4*pi$","fontsize",4,"color","red");
ylabel("$y(x)= 3*sin(x) +4*cos(x)$","fontsize",4,"color","red");
title("Example 5.9","color","red","fontsize",9);
