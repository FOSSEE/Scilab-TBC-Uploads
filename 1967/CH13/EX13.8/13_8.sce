clc
//initialisation of variables
clear
s1= 44.5 //cal deg^-1 mole^-1
s2= 49 //cal deg^-1 mole^-1
s3= 51.06 //cal deg^-1 mole^-1
s4= 16.75 //cal deg^-1 mole^-1
h1= -17.9 //kcal mole^-1
h2= 0 //kcal mole^-1
h3= -94 //kcal mole^-1
h4= -68.3 //kcal mole^-1
T= 25 //C
n= 2
//CALCULATIONS
dS= s3+2*s4-s1-n*s2
dH= h3+n*h4-h1-n*h2
dF= -0.001*(273.2+T)*dS+dH
//RESULTS
printf ('Entropy Change = %.1f E.U',dS)
printf ('\n Enthalpy Change = %.1f E.U',dH)
printf ('\n Standard free energy = %.1f kcal',dF)
