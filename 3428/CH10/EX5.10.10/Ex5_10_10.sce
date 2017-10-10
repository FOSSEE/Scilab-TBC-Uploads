//Section-5,Example-3,Page no.-D.12
//To find the percentage of R_1 and R_2 left unreacted.
clc;
R_0=1                       //(let)
t_1=30
R_t=0.75*R_0
k_1=(2.303/t_1)*(log10(R_0/R_t))
t_2=35
R1_t=(R_0)/(10^((k_1*t_2)/2.303))
R1_tpr=100*R1_t
disp(R1_tpr,'Percentage of R_1 left unreacted(%)')
k_O=(1/t_1)*((1/R_t)-(1/R_0))
R2_t=(R_0)/((k_O*t_2)+R_0)
R2_tpr=100*R2_t
disp(R2_tpr,'Percentage of R_2 left unreacted(%)')











