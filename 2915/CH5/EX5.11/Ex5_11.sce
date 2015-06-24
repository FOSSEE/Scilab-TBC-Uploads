//Example 5.11
//To find the amplitude phase shift and period of given function
clear,clc;

x = linspace(-0,2*%pi,200);
deviation = %pi; //deviation from multiples of x
y = 3*cos(2*x- deviation) ;//given function
amplitude = y/ cos(2*x- %pi) ;
printf('Amplitude = %f\n',amplitude);
multiple = 2; //multiplicity of angle 
period_cosx = 2*%pi; //period of sin(x) in radians
required_period = period_cosx / multiple;
printf('Required period = %f radians\n',required_period);
phase_shift = deviation / multiple;
printf('Phase shift = %f radians',phase_shift);

x = linspace(-0,2*%pi,200);
y = 3*cos(2*x- %pi) ;
set(gca(),"grid",[5 5]);
plot(x,y);
xlabel("$0\le x\le 2*pi$","fontsize",4,"color","red");
ylabel("$y(x)=3*cos(2*x- pi)$","fontsize",4,"color","red");
title("Example 5.11","color","blue","fontsize",9);
