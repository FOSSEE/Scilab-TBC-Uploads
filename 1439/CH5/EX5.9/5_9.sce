clc 
//initialisation of variables
T= 100 //C
R= 1.987 //cal mole^-1 K^-1
H= 539.7 //cal g^-1
M= 18 //g mole^-1
//CALCULATIONS
w= -R*(273+T)
qp= -H*M
dE= qp-w
dA= -w
dS= qp/(273+T)
dG= qp-(273+T)*dS
//RESULTS
printf ('W= %.f cal mole^-1',w)
printf ('\n qp= %.f cal mole^-1',qp)
printf ('\n dE= %.f cal mole^-1',dE)
printf ('\n dA= %.f cal mole^-1',dA)
printf ('\n dS= %.f cal deg^-1 mole^-1',dS)
printf ('\n dG= %.f cal mole^-1',dG)
