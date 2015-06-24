//Example 3.3
//Absolute, Relative and Percetage Errors
//Page no. 48
clc;clear;close;
x=0.00006;x1=0.00005;
ex=x-x1;            //absolute error
Ex=ex/x1;       //relative error
px=100*Ex;     //percentage error  
printf('\nAbsolute Error= %f\nRelative Error= %f\nPercentage Error= %f %%',ex,Ex,px);