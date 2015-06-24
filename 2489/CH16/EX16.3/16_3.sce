clc
//Intitalisation of variables
clear
k1= 10^-14
c= 0.1 //M
pH= 8.88
cH= 1.32*10^-9 //gms
//CALCULATIONS
x= k1/(c*cH)
kh= c*x^2
//RESULTS
printf ('x = %.2e ',x)
printf ('\n Hydrolysis constant = %.2e ',kh)
