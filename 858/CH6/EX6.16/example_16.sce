clc
clear 
printf("example 6.16 page number 264\n\n")

//to find the percentage extraction of nicotine
x=0.01;    //% of nicotine
X0 = x/(1-x);
w=150    //weight of nicotine water solution
A0=w*(1-X0);
B0=250;    //kg keroscene
X1 = A0*X0/(A0+B0*0.798);
printf("final concentration of nicotine = %f",X1)

c=A0*(X0-X1);
printf("\n\namount of nicotine removed = %f kg",c)

percentage = (c*100)/(A0*x);
printf("\n\npercentage recovery = %f percent",percentage)
