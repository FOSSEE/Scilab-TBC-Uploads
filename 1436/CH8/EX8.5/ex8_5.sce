//Example 8.4, page no-509
clear
clc
w=9
wn=6
x=w/wn
dr=0.6
Ar=1/sqrt(((1-(x)^2)^2)+(2*dr*x)^2)
printf("A=%.3f",Ar)
err=(1-Ar)*100
printf("\nError = %.2f%%",err)
