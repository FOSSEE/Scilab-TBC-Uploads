//Example 5.6
//To determine the amplitude and period of given function
clear,clc;

x = linspace(-0,4*%pi,200);
y = 3*cos(2*x) ; //given function
amplitude = y/cos(2*x);
printf('Amplitude = %f',amplitude);

multiple = 2; //multiplicity of angle
period_cosx=2*%pi; //period od cos(x)
period_required = period_cosx / multiple;
printf('\nPeriod = %f radians',period_required);

x = linspace(-0,2*%pi,50);
y = 3*cos(2*x) ;
set(gca(),"grid",[5 5]);
plot(x,y);
xlabel("$0\le x\le 2*pi$","fontsize",4,"color","red");
ylabel("$y(x)=3*cos(2*x)$","fontsize",4,"color","red");
title("Example 5.6","color","blue","fontsize",9);
