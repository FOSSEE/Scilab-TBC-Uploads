clc
//Intitalisation of variables
clear
k= 0.05915 //volt
n= 2 //moles
c= 0.1 //M
c1= 1 //M
//CALCULATIONS
r= k*log10(c/c1)/n
//RESULTS
printf ('EMF = %.5f volt ',r) 
