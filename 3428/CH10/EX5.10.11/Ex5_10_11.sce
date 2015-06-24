//Section-5,Example-4,Page no.-D.13
//To find the time taken for the reaction to go to 75% completion
clc;
R_0=1                    //(let)
R1_t=0.75*R_0
R2_t=0.25*R_0
t=400
k=(1/t)*((1/R1_t)-(1/R_0))
t_75=(1/k)*((1/R2_t)-(1/R_0))
disp(t_75,'Time required for 75% completion of reaction(sec)')

