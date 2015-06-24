clc 
//initialisation of variables
R= 1.987 //cal deg^-1 mole^-1
T= 27 //C
V1= 24.62 //lit
V2= 2.462 //lit
//CALCULATIONS
wmax= 2.303*R*(273.1+T)*log10(V1/V2)
dA= - wmax
dE= 0
q= dE+wmax
dH=0
dG= -R*(273.1+T)*2.303
dS= dG/(273.1+T)
dS1= (dH-dG)/(273.1+T)
//RESULTS
printf ('W= %.f cal mole^-1',wmax)
printf ('\n q= %.f cal mole^-1',q)
printf ('\n dE= %.f cal mole^-1',dE)
printf ('\n dA= %.f cal mole^-1',dA)
printf ('\n dS= %.2f cal deg^-1 mole^-1',dS1)
printf ('\n dG= %.2f cal mole^-1',dG)
