//Section-1,Example-3,Page no.-AC.440
//To predict tensile strength parallel to fibres.
clc;
Q_f=3200*10^6
E_f=230*10^9
Q_m=60*10^6
E_m=2.4*10^9
V_f=0.4
Q_fu=3.20
e_f=Q_f/E_f       //faliure strains of fibres
e_m=Q_m/E_m         //faliure strains of matrix
Q_m=E_m*e_f
Q_cu =((Q_fu*V_f)+((Q_m*(1-V_f)))
disp(Q_cu,'stress carried by composite at failure(GPa)')
