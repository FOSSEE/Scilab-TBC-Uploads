clear
clc
//Cp values(J/mol.k) given
CpA=35;CpB=45;CpR=70;
T1=25;T2=1025;
Hr=-50000;
//Enthalpy balance for 1mol A,1 mol B,2 mol R
nA=1;nB=1;nR=2;
dH=nA*CpA*(T1-T2)+nB*CpB*(T1-T2)+(Hr)+nR*CpR*(T2-T1);
printf("\n dH(J) at temperature 1025C is %f \n",dH)
if dH>0 then
    printf("Reaction is Exothermic")
else
     printf("Reaction is Endothermic")
end
