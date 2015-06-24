clear;
clc;
close;
disp("Example 11.13")

Cpg=2006 //in J/kg.K
Cs=903 //J/kg.K
X1=0.18
X2=0.16
Tr=1.057
Ir=(((1-X1)*Cpg+X1*Cs)*Tr/((1-X2)*Cpg+X2*Cs))^(1/2) //Ratio of specific impulse 
disp(Ir,"Raio of specific impulse :")
