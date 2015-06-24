//Example 5.12
//To find the amplitude phase shift and period of given function
clear,clc;

x = linspace(-%pi/6,4*%pi/3,200);
deviation = -%pi/2;//deviation from multiples of x
y = -2*sin(3*x- deviation) ;// given function
amplitude = abs(y/(sin(3*x- deviation)) );
printf('Amplitude = %f\n',amplitude);
multiple = 3; //multiplicity of angle 
period_sinx = 2*%pi ;//period of sin(x) in radians
required_period = period_sinx / multiple;
printf('Required period = %f radians\n',required_period);
phase_shift = deviation / multiple;
printf('Phase shift = %f radians',phase_shift);

x = linspace(-%pi/6,4*%pi/3,200);
y =-2*sin(3*x+ %pi/2) ;
set(gca(),"grid",[5 5]);
plot(x,y);
ylabel("$y =-2*sin(3*x+ %pi/2)$","fontsize",4,"color","red");
title("Example 5.12","color","blue","fontsize",9);
