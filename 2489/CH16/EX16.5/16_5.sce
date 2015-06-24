clc
//Intitalisation of variables
clear
pH= 7
c1=1 //M
c2= 0.155 //M
c3= 0.25 //m
c4= 0.05 //M
c5= 0.62 //M
pka= 7.21
//CALCULATIONS
ph1= pka+log10((c5+c4)/(c1-c4))
ph2= pka+log10((c2+c4)/(c3-c4))
//RESULTS
printf ('final pH = %.2f ',ph1)
printf ('\n final pH = %.2f ',ph2)
