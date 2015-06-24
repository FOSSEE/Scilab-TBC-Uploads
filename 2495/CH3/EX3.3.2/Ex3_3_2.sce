clear
clc
//For system when P_NH3=P_HCl
r=1;//no.of equations
C=3;//no. of constituents
Z1=1;//no. of restricting equations
C1=C-r-Z1;//no. of components
printf('C1=%.1d',C1)

//For system when P_NH3 not equal P_HCl
Z2=0;//no. of restricting equations
C1=C-r-Z2
printf('\nC1=%.1d',C1)

//page 103
