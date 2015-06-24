//Example 5.8
//To find the amplitude and period of given function
clear,clc;

//Period
printf('PERIOD:\n')
printf('This isnt a periodic function as x^2 is linearly related to x \n')
printf('and hence period doesnt exist\n')

//Amplitude
x = linspace(0,2*%pi,200);
y = 2*sin(x^2);
amplitude= y/sin(x^2);
printf('AMPLITUDE:\n')
printf('Amplitude exists unlike period\n')
printf('Because sine component of the given function never exceeds 1\n')
printf('Function value is always ;ess than constant factor adjacent to sine\n')
printf('Hence amplitude is the constant factor multiplied with sine component\n\n')
printf('Amplitude = %f as calculated\n',amplitude)


x = linspace(0,2*%pi,200);
y = 2*sin(x^2) ;
set(gca(),"grid",[5 5]);
plot(x,y,'b');
xlabel("$0\le x\le 2*pi$","fontsize",4,"color","red");
ylabel("$y(x)= 2*sin(x^2)$","fontsize",4,"color","red");
title("Example 5.8","color","red","fontsize",9);
