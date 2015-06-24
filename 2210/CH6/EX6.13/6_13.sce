//Chapter 6, Problem 13
clc
funcprot(0)
//using Y-parameters given in the case study
Yin=(18.33+%i*11.59)*10^-3              //in complex form
y21=(1.09-%i*17.51)*10^-3               //in complex form
y22=(0.3+%i*1.57)*10^-3                 //in complex form
Yl=3.33e-3

//defining a funcion 
deff('[b]=imp1(d)','b={(real(d)^2)+(imag(d)^2)}^0.5');
deff('[c]=imp2(e)','c=atan(imag(e)/real(e))*180/%pi');

a=y21*Yl
b=Yin*(y22+Yl)

//calling a function
[a1]=imp1(a)
[a2]=imp2(a)
[b1]=imp1(b)
[b2]=imp2(b)

Ai1=a1/b1
Ai2=a2-b2

printf("Ai (magnitude) = %.2f amp\n\n",Ai1)
printf("Ai (angle) = %.2f degree",Ai2)
