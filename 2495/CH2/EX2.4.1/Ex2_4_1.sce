clear
clc
T=303;//in K
m2=10;//mass of solute in gm
m1=80;//mass of solute acetone in gm
P1=271;//in torr
P2=283;//in torr
M1=58;//in gm/mol
M2=((m2*M1)/(((P2-P1)/P2)*m1))-((M1*m2)/m1)
printf('M2=%.1f gm/mol',M2)

//page 39

