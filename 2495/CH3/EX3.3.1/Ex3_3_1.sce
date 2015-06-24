clear
clc
//In KCL NaCl H20 system
r=3;//no.of reactions
C=8;//no. of constituents
Z=2;//no.of restricting equations
C1=C-r-Z;//no. of components
printf('C1=%.1d',C1)

//If salts present in equal amounts
C1=C-r-(Z+1);//no. of components
printf('\nC1=%.1d',C1)

//If KCL NaCl as strong electrolytes
r=1;//no.of reactions
C=6;//no. of constituents
Z=2;//no.of restricting equations
C3=C-r-Z;//no. of components
printf('\nC3=%.1d',C3)

//If salts present in equal amounts
C4=C-r-(Z+1);//no. of components
printf('\nC4=%.1d',C4)

//In KCL NaCl H20 system
r=5;//no.of reactions
C=11;//no. of constituents
Z=2;//no.of restricting equations
C5=C-r-Z;//no. of components
printf('\nC5=%.1d',C5)

//If salts present in equal amounts
C6=C-r-(Z+1);//no. of components
printf('\nC6=%.1d',C6)

//If KCL NaCl NaBr and KBr as strong electrolytes
r=1;//no.of reactions
C=7;//no. of constituents
Z=2;//no.of restricting equations
C7=C-r-Z;//no. of components
printf('\nC7=%.1d',C7)

//If salts present in equal amounts
C8=C-r-(Z+1);//no. of components
printf('\nC8=%.1d',C8)

//page 103


