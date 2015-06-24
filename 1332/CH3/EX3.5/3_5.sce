//Example 3.5
//Absolute, Relative and Percentage Errors
//Page no. 52
clc;clear;close;
x=9.12345;y=7.654321;
x1=9.1234;y1=7.6543;      //on a 5 decimal computer
ex=x-x1;            //absolute error of x
ey=y-y1;            //absolute error of y
z1=x1+y1;
printf('\nAbsolute Error in x= %f',ex);
printf('\nAbsolute Error in y= %f',ey);
printf('\nAddition on a 5 decimal computer yields= %.5g',z1);
z2=16.777;
printf('\nAbsolute Total Error= %f',x+y-z2);
printf('\nAbsolute Propagated Error= %f',x+y-z1);
printf('\nAbsolute Round-off Error= %.4g',z1-z2);
printf('\nRealtive Total Error= %.4g',(x+y-z2)/(x+y));
printf('\nRelative Propagated Error= %.2g',(x+y-z1)/(x+y));
printf('\nRelative Round-off Error= %.3g',(z1-z2)/(x+y));
printf('\nBound on the propagated relative error= %f',2*10^-4);
printf('\nBound on the total relative error= %f',3*10^-4);
printf('\nAs we can see that both the propagated and total relative error are less than their bound values')