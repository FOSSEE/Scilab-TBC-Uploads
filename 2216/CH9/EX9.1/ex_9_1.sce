//Example 9.1: The thickness
clc;
clear;
close;
format('v',7)
//given data :
lamda=589.3*10^-9;// in m
ne=1.553;
no=1.544;
x=(lamda/(4*(ne-no)))*10^3;
disp(x,"The thickness of the a quarter wave plate,x(mm) = ")
