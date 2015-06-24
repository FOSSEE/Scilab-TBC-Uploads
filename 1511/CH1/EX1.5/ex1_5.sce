// Example 1.5 page no-19
clear
clc

B=0.03        //wb/m^2
m=9.1*10^-31  //kg
V=2*10^5
e=1.6*10^-19 //C

R=(2*m*V/e)^(1/2)
R=floor(R*100/B)
printf("Radius of the circle, R=%.0f cm",R)
//OAC is a right angled triangle
oa=R
oc=3
ac=sqrt((oa)^2-(oc)^2)
printf("\n  AD=%d cm",oa-ac)
