//calculating potential
//Example 6.4
clc
clear
Ag=1
Ksp=8.7*(10^-17)
Agplus=sqrt(Ksp)
X=Ag/Agplus
E1=0.799//E(Ag+/Ag)
E2=E1-(0.0591*log10(X))
printf('Thus E(Ag+/Ag) = %2.3f V',E2)
