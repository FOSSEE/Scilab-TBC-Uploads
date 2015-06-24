clear
clc
//Arbitrary amounts of A1 and A2 only
C=4;//no. of constituents
r=1;//no. of reactions
Z1=1;//no. of restrictions
C1=C-r-Z1;//no. of components
printf('C1=%.1d',C1)

//Arbitrary amounts of A1,A2,A3,A4
Z2=0
C1=C-r-Z2;//no. of components
printf('\nC1=%.1d',C1)

//Different moles of A1 and A2 only
Z3=2
C1=C-r-Z3;//no. of components
printf('\nC1=%.1d',C1)

//page 103
