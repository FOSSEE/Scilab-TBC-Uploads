//Example 5.10
//To find the period of given function
clear,clc;

x = linspace(-0,2*%pi,200);
y1=cos(6*x); //1st part of given function
multiple1=6;//multiplicity of angle
period_cosx=2*%pi ;//period of cos(x) is 2 pi
period1= period_cosx/ multiple1;
printf('Note: Period of cos(%d*x)= %f radians\n',multiple1,period1);
y2= sin(4*x); //second part of given function
multiple2=4; //multiplicity of angle
period_sinx=2*%pi ;//period of sin(x) is 2 pi
period2= period_sinx/multiple2;
printf('Period of sin(%d*x)= %f radians\n',multiple2,period2);

locm = %pi ;//LCM of period1 and period 2
period = locm ;//final period
printf('\nRequired period is %f radians',period);
x = linspace(0,2*%pi,200);
y = cos(6*x)+ sin(4*x);//given function
set(gca(),"grid",[5 5]);
plot(x,y,'r');
xlabel("$0\le x\le 2*pi$","fontsize",4,"color","red");
ylabel("$y(x)= sin(4*x) +cos(6*x)$","fontsize",4,"color","red");
title("Example 5.10","color","red","fontsize",9);
