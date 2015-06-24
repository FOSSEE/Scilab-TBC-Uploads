//Section-6,Example-7,Page no.-P.55
//To find the concentration of glucose solution.
clc;
pi_Blood=7.65
R=0.0821
T=310
B_Glucose=pi_Blood/(R*T)
M_w=180        //Molecular weight of Glucose(g/mol)
C=B_Glucose*M_w
disp(C,'Concentration of glucose solution(gm/L)')
