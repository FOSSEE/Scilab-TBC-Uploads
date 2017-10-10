//Example 5.6
clc;

//Resolution of 3 1/2 digit display on 1V & 10V
n=3;         //No. of Full Digits
R=1/10^n;    //Resolution is 1/10^n

//For 1V
R1=R*1;
disp(R1,'Resolution for 1V is')

//For 10V
R2=R*10;
disp(R2,'Resolution for 10V is')