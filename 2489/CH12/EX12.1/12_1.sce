clc
//Intitalisation of variables
clear
k1= 0.015
k2= 0.028
p1= 0.7806 //atm
p2= 0.21 //atm
//CALCULATIONS
P1= k1*p1*100/(k1*p1+k2*p2)
P2= 100-P1
//RESULTS
printf ('moles of Nitrogen = %.1f moles',P1)
printf ('\n moles of Oxygen = %.1f moles',P2)
