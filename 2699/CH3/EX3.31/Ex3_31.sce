//EX3_31 PG-3.67
clc
LR=3e-3;//load regulation
Vnl=15;//no load voltage or maximum voltage
Vfl=Vnl-LR;//full load voltage
%LR=(Vnl-Vfl)/Vfl*100;//percentage load regulation
printf("\n percentage load regulation is +%.2f %%",%LR)
