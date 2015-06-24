clc
//initialisation of variables
clear
a1= 6.189 
a2= 3.225
a3= 10.421
b1= 7.787*10^-3
b2= 0.707*10^-3
b3= -0.3*10^-3
c1= -0.728*10^-6
c2= -0.04014*10^-6
c3= 0.7212*10^-6
dH= -9.13 //kcal
//CALCULATIONS
a= -(a2+a3-a1)*10^-3
b= -0.5*(b2+b3-b1)*10^-3
c= -0.33*(c2+c3-c1)*10^-3
//RESULTS
printf ('a = %.2e kcal mole^-1',a)
printf ('\n b = %.2e kcal mole^-1',b)
printf ('\n c = %.2e kcal mole^-1',c)
printf ('\n dH = %.2f kcal mole^-1',dH)
