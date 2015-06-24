//EX3_30 PG-3.67
clc
Vnl=10;//no load output voltage
Vfl=9.8;//full output voltage
LR=Vnl-Vfl;//load regulation
%LR=(Vnl-Vfl)/Vfl*100;//percentage load regulation
printf("\n percentage load regulation is +%.2f %%",%LR)
