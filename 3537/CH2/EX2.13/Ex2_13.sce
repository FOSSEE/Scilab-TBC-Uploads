//Example 2_13
clc();
clear;
//deduce the missing order of a double slit
a=0.16*10^-3  //units in m
b=0.8*10^-3 //units in m
n_p=(a+b)/a
for j=1:3
printf("For p=%d n=%d\n",j,j*n_p);
end
