//Section-1,Example-1,Page no.-245
//To estimate different hardness present in hard water sample from the given data.
clc;
SHW=36.6
T_H=18.6
P_H=6.2
L_F=0.6
V_1=40/36     //CaCO3 eq.present in 1ml soap solution.
Total_H=(T_H-L_F)*V_1*(1000/100)
disp(Total_H,'Total hardness(ppm)')
Pr_H=(P_H-L_F)*V_1*(1000/100)
disp(Pr_H,'Permanent hardness(ppm)')
Tr_H=(Total_H-Pr_H)
disp(Tr_H,'Temporary hardness(ppm)')
