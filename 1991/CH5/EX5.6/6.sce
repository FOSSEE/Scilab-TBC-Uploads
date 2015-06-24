clc
clear
//input
F=5 //power of lenses
f1=0.45 //focal length
//calculation
x=F-(1/f1)//lens formula
f2=1/x
//output
printf("the focal length is %3.3f m",f2)
printf("\n the power is %3.3f dioptre",x)
