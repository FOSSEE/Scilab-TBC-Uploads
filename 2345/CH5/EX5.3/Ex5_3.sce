//Finding charge and energy
//Example 5.3(pg 194)
clc
clear
//Before immersion of oil
C=0.005*(10^-6)
V=500
q=C*V
E=(1/2)*(C*V*V)
printf('Charge of condenser is %e coulomb \n',q)
printf('Energy stored in condenser before immersion of oil is %e Joules \n',E)

//After immersion of oil
K=2.5
q1=q// since no loss of charge
C1=K*C//capacity of condenser
E1=(q1^2)/(2*C1)// energy stored in condenser
printf('Energy stored in condenser after immersion of oil is %e Joules',E1)
