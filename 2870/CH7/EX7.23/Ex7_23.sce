clc;clear;
//Example 7.23

//given data
P1=85.6;
P2=985.6;
P2r=885.6;
CC=12000;//current cost

//constants used
n=1.4;

//calulation
freduction=1-(((P2r/P1)^((n-1)/n)-1)/((P2/P1)^((n-1)/n)-1));
CS=CC*freduction;
disp(round(CS),'cost savings in Dollar/yr')
