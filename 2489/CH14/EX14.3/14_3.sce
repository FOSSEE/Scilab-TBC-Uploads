clc
//Intitalisation of variables
clear
emf= 0.0455 //volt
T= 25 //C
c= 0.1 //N
emf1= 0.334 //volt
emf2= 0.799 //volt
k= 0.05915
//CALCULATIONS
ag= 10^((-emf2+(emf1-emf))/k)
//RESULTS
printf ('aAg+ = %.2e g ion per 1000 grams per litre ',ag) 
