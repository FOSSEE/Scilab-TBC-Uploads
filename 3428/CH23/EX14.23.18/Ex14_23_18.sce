//Section-14,Example-2,Page no.-PC.112
//To calculate the pH in the following cases.
clc;
V_1=150                //volume of 0.1 NaOH solution(ml)
V_2=150                //volume of 0.2 HCl solution(ml)
N_1=0.1                 //(N)
N_2=0.2                    //(N)
V=V_1+V_2             //Total volume of the solution(ml)
m_eq=(V_2*N_2)-(V_1*N_1)            //Total milligram equivalents of excess HCl(gm equivalents)
N=m_eq/V                              //(N)
C_1=N                          //Since HCl is a strong acid so[HCl]=[H3O+]   (M)
pH_1=-log10(C_1)
disp(pH_1,'pH of the required solution')
pH1=5
C1=10^-5                    //[H3O+]             (M)
pH2=3
C2=10^-3                    //[H3O+]                (M)
C_3=(C1+C2)/2                //[H3O+]                  (M)
pH_2=-log10(C_3)
disp(pH_2,'pH of the required solution')

