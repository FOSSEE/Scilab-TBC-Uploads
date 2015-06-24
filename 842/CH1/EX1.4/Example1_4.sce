//clear//
//Example 1.4:Combinationation two periodic signals
// Aperiodic signal
//Page 12
clear;
clc;
close;
F=1;  //Frequency  = 1 Hz
t1 = 0:-1/100:-2*%pi; 
x1 = cos(F*t1);
t2 = 0:1/100:2*%pi;
x2 = sin(F*t2);
a=gca();
plot(t2,x2);
plot(t1,x1);
a.y_location = "middle";
a.x_location = "middle";
xtitle('The signal x(t) = cost for t < 0 and sint for t > 0: Aperiodic Signal')
