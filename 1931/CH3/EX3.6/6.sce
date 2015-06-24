clc
clear
//INPUT DATA
h=1//miller indices of x-axis
k=1//miller indices of y-axis
l=1//miller indices of z-axis

//CALCULATION
p=1/h//intercept on x-axis
q=1/k//intercept on y-axis
r=1/l//intercept on z-axis
//OUTPUT
printf('The ratio of intercepts on the three axis by (%i %i %i) plane is %i:%i:%i',h,k,l,p,q,r)
