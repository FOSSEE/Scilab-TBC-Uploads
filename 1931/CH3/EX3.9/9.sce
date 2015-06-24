clc
clear
//INPUT DATA
p=1//x-intercept of the plane
q=1/2//y-intercept of the plane
r=3//z-intercept of the plane

//CALCULATION
h=(1/p)*3//miller indices with respect to x axis
k=(1/q)*3//miller indices with respect to y axis
l=(1/r)*3//miller indices with respect to z axis

//OUTPUT
printf('The miller indices of the plane is (h k l)=(%i %i %i)',h,k,l)
