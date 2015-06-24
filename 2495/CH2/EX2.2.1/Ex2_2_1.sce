clear
clc
M1=20;//mass of acetic acid in gm
M2=80;//mass of water in gm
mM=60;//molar mass of acetic acid in gm
Vm1=M1/60;//in mol
Vm2=M2/18;//in mol
rho=1.026;//in gm/cm^3
X=Vm1/(Vm1+Vm2);//mole fraction of acetic acid
printf('X=%.3f',X)
B=Vm1/(M2/1000);//molality of acetic acid
printf('\nB=%.3f mol/kg',B)
V=(M1+M2)/rho
C=(Vm1)/(V/1000);//molarity of acetic acid
printf('\nC=%.3f moldm^-3',C)

//There are some errors in the solution given in textbook
//In textbook the value of X is given in fraction
//page 36
