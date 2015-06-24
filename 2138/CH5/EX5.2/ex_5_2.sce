//Example 5.2: thickness  
clc;
clear;
close;
//given data :
Z=0.329*10^-3;// IN g/C
I=1;// in amperes
t=90*60;// in seconds
M=Z*I*t;// in grams 
A=200;//area in centimete square
S=8.9;//density in g/cc
T=(M)/(2*A*S);//thickness in cm
disp(T,"thickness of copper in cm is")
