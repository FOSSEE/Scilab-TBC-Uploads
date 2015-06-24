clc
//Intitalisation of variables
clear
v= 10 //lit
p= 75 //cm of hg
T= 27 //C
R= 0.082 //lit-atm/mole K
//CALCULATIONS
n= (p/76)*v/((273+T)*R)
//RESULTS
printf ('Moles of oxygen contained = %.3f moles',n)
