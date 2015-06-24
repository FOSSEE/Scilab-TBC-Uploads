//Example 5.5
//To determine the period of 2 given cosine functions 
clear,clc;

//y=cos(3*x)
multiple = 3; //multiplicity of angle 
period_cosx = 2*%pi; //period of sin(x) in radians
required_period = period_cosx / multiple;
printf('Period of cos(3*x)is %f radians\n',required_period);

//y=cos(0.5*x)
multiple = 1/2; //multiplicity of angle 
period_cosx = 2*%pi; //period of sin(x) in radians
required_period = period_cosx / multiple;
printf('Period of cos(x/2)is %f radians',required_period);

x = linspace(-0,4*%pi,200);
y = cos(3*x) ;
z = cos(x/2) ;
set(gca(),"grid",[4 4]);
plot(x,y,'r-');
plot(x,z,'b-');
xlabel("$0\le x\le 4*pi$","fontsize",4,"color","red");
title("Example 5.5","color","blue","fontsize",9);
legend(["y = cos(3x)";"y = cos(x/2)"]);
