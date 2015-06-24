//Example 3.5, page no 94
clc
disp('part b')
lambda=5890*10^-8//in cm
c=3*10^10//in cm/s
v=c/lambda
del_v=8*10^6//per s
x=del_v/v
h=4.14*10^-15//in ev-sec
printf("\n Fractional width of either line(del_v/v) %e  ",x)
//Calculate uncertainty
disp('part c')
del_t=10^-8
del_e=(h)/(4*%pi*del_t)
printf("\n Uncertainty is %e ev ",del_e)