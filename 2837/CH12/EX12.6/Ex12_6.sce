clc
clear
//Initialization of variables
d=0.5 //in
tm=1000 //F
v=5//ft/s
k=38.2
den=51.2
mu=0.3
//calculations
Nu=7+ 0.025*(d/12 *v*den*mu/k*3600)^0.8
h=Nu*k/(d/12)
//results
printf("Inside film coefficient = %d Btu/sq ft hr F",h)
