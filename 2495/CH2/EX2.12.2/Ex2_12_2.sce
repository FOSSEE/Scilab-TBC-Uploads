clear
clc
n2=6.2;//in mol
n1=1000;//in mol
X=(n2)/((n1/18)+n2);//solubility of sucrose
T1=298;//in K
T2=473;//freezing point temperature in K
R=8.314;//in J/Kmol
DelH2m_f=-(R*2.303*log10(X)/((1/T1)-(1/T2)));//molar heat of fusion
printf('DelH2m_f=%.1d J/mol',DelH2m_f)

//There are some errors in the solution given in textbook
//page 82
