clc;
//Example 11.6
//page no 118
printf("Example 11.6 page no 118\n\n");
clear;
//first and second viral coeff.
B=-0.159//m^3/kgmol
C=0.009//(m^3/kgmol)^2
V_new=0
V=0.820;
for i=1:3
    V_new=(1+(B)/V+(C)/(V^2))/1.22
    V=V_new
end
printf("\nVolume of gas V=%f L/gmol",V)
