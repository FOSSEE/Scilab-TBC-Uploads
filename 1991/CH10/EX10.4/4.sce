clc
clear
//input
n=6//order of fringe
l=0.63*10^-6 //wavelength
x=24.8*10^-3 //seperation of bands
d=1.5
a=2.7*10^-4
//calculation
x=d*(6+1/2)*l/a//distance between centre and sixth fringe
w=l*1.6/a//fringe width
//output
printf("the distance between centre and sixth fringe is %3.3e m",x)
printf("\nthe fringe width is %3.3e m",w)
