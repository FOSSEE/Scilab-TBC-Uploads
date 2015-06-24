//Example 5.4
//To determine the period of given sinusoidal function 
clear,clc;

multiple = 2; //multiplicity of angle 
period_sinx = 2*%pi ;//period of sin(x) in radians
required_period = period_sinx / multiple;
printf('Required period is %f radians',required_period);

//Note that sin 2x “goes twice as fast” as sin x.
//While sin x takes a full 2*pi radians to go through an entire cycle
//sin 2x goes through an entire cycle in just pi radians

x = linspace(-0,2*%pi,100);
y = sin(2*x) ;
z = sin(x) ;
set(gca(),"grid",[4 4]);
plot(x,y,'r-');
plot(x,z,'b-');
xlabel("$0\le x\le 2*pi$","fontsize",4,"color","red");
ylabel("$y(x)=sin(2x)$","fontsize",4,"color","red");
title("Example 5.4","color","blue","fontsize",9);
legend(["sin(2x)";"sin(x)"]);
