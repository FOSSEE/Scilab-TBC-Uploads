//Section-6,Example-1,Page no.-P.43
//To find the lowering of freezing point of the solution.
clc;
K_f=1.86
M_m=(12*12)+(22*1)+(11*16)       //Molar mass of sucrose(C_12H_22O_11)(gm/mol)
n_S=3/M_m
m_S=n_S/0.1
dl_Tf=K_f*m_S
disp(dl_Tf,'Lowering of freezing point of the solution(K)')
