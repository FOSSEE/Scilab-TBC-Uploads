clc;
//page 273
//problem 5.6

//The y axis is uniformly quantized with step size(step_size) = 1/[(2^8)/(2-1)] in both +ve & -ve direction between 1 & -1 when peak of input varies between 1 & -1.
//The smallest step in x direction occurs nearest to x=0 i.e between y1 = 0 & y2 = step_size
step_size = 1/[(2^8)/2-1]
y1 = 0
y2 = step_size

//Then, y1 = [ln(1+255*x1)]/[ln(1+255)]

x1 = (%e^(y1*log(256)) - 1)/255;

//y2 = [ln(1+255*x2)]/[ln(1+255)]
x2 = (%e^(y2*log(256)) - 1)/255;

//The smallest step size is 10*(x2-x1)
disp('The smallest step size is '+string(10*(x2-x1))+' Volts')

//The largest step size occurs when x is at its extreme between y1 = 1-1/127 = 126/127 & y2 = 1
y1 = 1-1/127
y2 = 1

//Then, y1 = [ln(1+255*x1)]/[ln(1+255)]

x1 = (%e^(y1*log(256)) - 1)/255;

//y2 = [ln(1+255*x2)]/[ln(1+255)]
x2 = (%e^(y2*log(256)) - 1)/255;

//The largest step size is 10*(x2-x1)
disp('The largest step size is '+string(10*(x2-x1))+' Volts')
