clear
clc
//Given
//Concentrations in mol/litre
CAo=0.1;CBo=0.01;Cco=0;CAf=0.02;CBf=0.03;Ccf=0.04;
//Volume in litre
V=1;
//Volumetric flow rate(l/min)
v=1;
//For mixed flow reactor
CA=CAf;CB=CBf;Cc=Ccf;
//Rate of reaction(mol/litre.min)
rA=(CAo-CA)/(V/v);
rB=(CBo-CB)/(V/v);
rc=(Cco-Cc)/(V/v);
printf("\nRESULT\n")
printf("rate of reaction of A(mol/litre.min) is %f\n",rA)
printf("\nrate of reaction of B(mol/litre.min) is %f\n",rB)
printf("\nrate of reaction of C(mol/litre.min) is %f\n",rc)






