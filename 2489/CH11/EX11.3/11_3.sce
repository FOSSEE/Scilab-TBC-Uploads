clc
//Intitalisation of variables
clear
n1= 2 //moles
n2= 2 //moles
n3= 1 //mole
h1= 54.6 //cal
h2= 7.8 //cal
h3= -69.6 //cal
R= 1.987 //cal
T= 25 //C
//CALCULATIONS
dF= -n1*h1-(-n2*h2+n3*h3)
Kp= 10^(-dF*1000/(2.303*R*(273.2+T)))
//RESULTS
printf ('dF = %.f kcal ',dF)
printf ('\n equillibrium constant = %.1e  ',Kp)
