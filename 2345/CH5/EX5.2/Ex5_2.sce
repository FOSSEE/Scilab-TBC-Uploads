//Finding charge and potential gradient
//Example 5.2(pg 193)
clc
clear
C=0.0002*(10^-6)//capacitance in F
V=20000//P.D across condenser in V
t=2//thickness in mm
Q=C*V//charge on each plate in coulomb
g=(V/t)*(1/1000)// potential gradient in kV/mm
printf('Charge given to condenser is %e Coulombs \n',Q)
printf('Potential gradient of condenser is %3.0f kV/mm',g)
