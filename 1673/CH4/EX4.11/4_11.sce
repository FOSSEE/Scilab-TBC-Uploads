//least square for quadratic equations 
//example 4.11
//page 141
clc;clear;close;
I1=integrate('1','x',0,%pi/2);
I2=integrate('x','x',0,%pi/2);
I3=integrate('x^2','x',0,%pi/2);
I4=integrate('x^3','x',0,%pi/2);
I5=integrate('x^4','x',0,%pi/2);
I6=integrate('sin(x)','x',0,%pi/2);
I7=integrate('x*sin(x)','x',0,%pi/2);
I8=integrate('x^2*sin(x)','x',0,%pi/2);
printf('the equations are:\n\n');
A=[I1,I2,I3;I2,I3,I4;I3,I4,I5];
C=[I6;I7;I8];
X=A^-1*C;
printf(' the quadratic equation is of the form %f+%fx+%fx^2',X(1,1),X(2,1),X(3,1));
//value of sin pi/4
y=X(1,1)+X(2,1)*%pi/4+X(3,1)*(%pi/4)^2
printf( '\n\nsin(pi/4)=%0.9f',y)
printf('\n\nerror in the preecing solution %0.9f',abs(y-sin(%pi/4)))