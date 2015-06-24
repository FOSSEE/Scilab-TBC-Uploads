clc
//initialisation of variables
clear
r= 3.38*10^-4 //volt deg^-1
F= 23070 //cal volt^-1 deg^-1
Sagcl= 23 //E.U.mole^-1
Shg= 18.5 //E.U.mole^-1
Sag= 10.2 //E.U.mole^-1
//CALCULATIONS
dS= F*r
shgcl= 2*-(dS-Sagcl-Shg+Sag)
//RESULTS
printf ('dS  = %.1f E.U.cal deg^-1',dS)
printf ('\n molar entropy  = %.f E.U.mole^-1',shgcl)

