clc;clear;
//Example 15.6
//calculation of activity

//given values
t=28;//half life in years
m=10^-3;//mass of sample
M=90;//atomic mass of strontium
NA=6.02*10^26;//avogadro's number


//calculation
n=m*NA/M;//no of nuclei in 1 mg sample
k=.693/(t*365*24*60*60);//decay constant
A=k*n;
disp(A,'activity of sample(in disintegrations per second) is');