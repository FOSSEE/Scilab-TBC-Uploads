//Example no 1-14
//page no. 29
clc;
clear;
disp('Solution (i) is ');
ne=1.4;//refractive index
no=1.25;            //refractive index
c=3*10^8;                   //in m/s
T=2*10^-5;  //in m
l=740;      //in nm
t=[ne-no]*T/c;      //time difference
printf("\n Time difference, t is %0.2f ps",t*10^12);// result
disp('Solution (ii) is ');
le=l/ne; 
lo=l/no;
fi=2*%pi*T*(1/le-1/lo)*10^9;
printf("\n Phase difference is %0.1f rad",fi);// result
// Answer misprinted in book

