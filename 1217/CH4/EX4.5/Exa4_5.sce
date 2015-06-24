//Exa 4.5
clc;
clear;
close;
disp("The given circuit is basically an inverting amplifier with node A at virtual ground. Writing KCL at node A yields ");
disp("I1+I2=If");
disp("-2/10Kohm+3/20Kohm=-Vo/100Kohm");
Vo=-(-20+15);//in Volts
disp(Vo,"Output voltage in Volt is : ")