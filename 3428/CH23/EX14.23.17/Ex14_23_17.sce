//Section-14,Example-1,Page no.-PC.112
//To calculate the pH values of the following.
clc;
C_HCl=0.001                 //(M)
C_1=C_HCl               //Since HCl is a strong acid,[H3O+]=[HCl](M)
pH_1=-log10(C_1)
disp(pH_1,'pH of 0.001 M HCl')
C_NaOH=0.0001             //(M)
C_2=C_NaOH            //Since NaOH is a strong base so [OH-]=[NaOH](M)
pOH=-log10(C_2)
pH_2=14-pOH
disp(pH_2,'pH of 0.0001 M NaOH')
C_BaOH2=0.001              //(M)
C_31=2*C_BaOH2            // [OH-]=2*[Ba(OH)2](M)
k_w=10^-14
C_32=k_w/(C_31)         //(M)
pH_3=-log10(C_32)
disp(pH_3,'pH of 0.001 M Ba(OH)2')
M_H2SO4=0.0049                                 //Mass of H2SO4 (gm)
V_req=200                           //Volume of solution to be prepared(ml)
Mo=(M_H2SO4/98)/(V_req/1000)                //Molarity of H_2SO_4 solution(M)
C_4=2*Mo                               //[H_3O+](M)
pH_4=-log10(C_4)
disp(pH_4,'pH of the given solution')
