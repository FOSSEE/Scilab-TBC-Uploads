//Chapter 1 : Wave Optics

clear;

//Variable declaration
lamda=5.9*10**-7
r=5.2*10**-3           //radius of ring
n=10

//Calculation
R=(r**2)/(n*lamda)
t=(n*lamda)/2/10**-6

//Result
mprintf("(i)Radius of curvature R= %f m" ,R)
mprintf("\n(ii)Thickness of air film t= %.2f*10**-6 m" ,t)
