clc 
// Given that
x=0.2// Area fraction of the fibre in the composite 
Ef= 300 // Elastic modulus of the fibre in GPa
Em= 100 // Elastic modulus of the matrix in GPa

// Sample Problem on page no. 229

printf("\n # application of reinforced plastics # \n")

Ec = x*Ef + (1-x)*Em
printf("\n\n The Elastic Modulus of the composite is = %d GPa",Ec)

//Let Pf/Pm be r
r=x*Ef/((1-x)*Em) 
 
//Let Pc/Pf be R
R=1+(1/r) // from the relation  Pc = Pf + Pm
P=(1*100)/R
printf("\n\n The Fraction of load supported by Fibre is = %f Percent",P)
// Answer in the book is approximated to 43 %
