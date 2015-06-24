//Section-1,Example-3,Page no.AC-234
//To calculate Temporary,Permanent and Total hardness  of water in ppm.
clc;
A_1=4
M_1=100/162
Ce_1=A_1*M_1 //CaCO3 equivalent of Ca(HCO3)2
A_2=6
M_2=100/146
Ce_2=A_2*M_2 //CaCO3 equivalent of Mg(HCO3)2
A_3=8
M_3=100/136
Ce_3=A_3*M_3 //CaCO3 equivalent of CaSO4
A_4=10
M_4=100/120
Ce_4=A_4*M_4 //CaCO3 equivalent of MgSO4
T_H=Ce_1+Ce_2
disp(T_H,'Temporary Hardness of water in ppm')
P_H=Ce_3+Ce_4
disp(P_H,'Permanent Hardness of water in ppm')
Total_H=T_H+P_H
disp(Total_H,'Total Hardness of water in ppm') 




