clear
clc
DelH2m_f=10;//molar heat of fusion in kJ/mol
T1=298.15;//temperature in K
T2=353.35;//freezing temperature in K
R=8.314;//in J/Kmol
X=(10^-(((DelH2m_f*10^3)/R)*((1/T1)-(1/T2))));//solubility of napthalene
printf('X=%.4f',X)

//solution is wrong
//There are some errors in the solution given in textbook
//page 81

