clc
//Intitalisation of variables
clear
ch= 5.46*10^-5 //g ion per litre
ph= 8.752
//CALCULATIONS
pH= -log10(ch)
ch1= 10^(-ph)
//RESULTS
printf ('pH = %.3f',pH) 
printf ('\n Hydrogen ion concentration = %.3e g ion per litre',ch1) 
