//Section-1,Example-4,Page no.-AC.441
//To predict the tensile strength parallel to fibres.
clc;
E_f=76
e_f=((1800*10^6)/(76*10^6))     //faliure strains of fibres
e_m=((55*10^6)/(3*10^9))        //faliure strains of matrix
Q_f=1.8
V_f=0.4
Q_mu=0.055
Q_f1=E_f*e_m
Q_c1=((Q_f1*V_f) +(Q_mu*(1-V_f)))
disp(Q_c1,'stress carried by composite assuming parallel coupling between fibres and matrix(GPa)')
Q_c2=Q_f*V_f
disp(Q_c2,'max. stress carried by composite when only fibres are contributing(GPa)')
