//Section-14,Example-3,Page no.-PC.113
//To calculate the quantity of NaOH.
clc;
M_m=40                  //Molecular mass of NaOH
pH=10
C_1=10^-pH                 //[H3O+]
k_w=10^-14
C_2=k_w/C_1             //[OH-]
C_3=C_2                 //Since NaOH is a strong base [NaOH]=[OH-]
A=M_m*C_3
disp(A,'Required amount of NaOH(gm)')
