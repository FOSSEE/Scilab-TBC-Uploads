//Example 5.7
//To find amplitude and period of given composite function 
clear,clc;

x = linspace(0,3,200);
y1=2 ;//1st part of given function
amplitude1=y1 ;//amplitude numerically same for constant function
y2= -3*sin((2*%pi/3)*x); //second part of given function
amplitude2 = abs(y2/sin((2*%pi/3)*x)) ;//amplitude of part 2
//Note: adding 2 doesnt change ampitude
//It just causes the upward shift of graph
maax =amplitude1 + amplitude2; //altered maximum due to adding of 2
minn =amplitude1 - amplitude2;//altered minimum due to adding of 2
amplitude = (maax-minn)/2;//required amplitude
printf('Amplitude = %f',amplitude);
 
multiple=2*%pi/3 ;//multiplicity of angle
period_sinx=2*%pi;//period of sin_x
period_required = period_sinx/ multiple;
printf('\nRequired period is %f radians',period_required);

x = linspace(0,3,200);
y = 2 -3*sin((2*%pi/3)*x)
set(gca(),"grid",[5 5]);
plot(x,y);
xlabel("$0\le x\le 3$","fontsize",4,"color","red");
ylabel("$y(x)= 2 -3*sin((2*%pi/3)*x)$","fontsize",4,"color","red");
title("Example 5.7","color","blue","fontsize",9);
