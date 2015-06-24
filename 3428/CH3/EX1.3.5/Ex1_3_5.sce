//Section-1,Example-4,Page no.AC-235
//To find the hardness of sample in degree F.
clc;
N_MgSO4=0.08
V_MgSO4=25/1000
Ew_MgSO4=1           //(let)
N_geMgSO4=V_MgSO4*N_MgSO4
W1_MgSO4=N_geMgSO4*Ew_MgSO4
W2_MgSO4=N_geMgSO4*Ew_MgSO4*(1000/200)
H=W2_MgSO4*(50/Ew_MgSO4)*10^2
disp(H,'hardness of sample in degree F')
