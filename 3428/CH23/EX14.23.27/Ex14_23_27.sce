//Section-14,Example-2,Page no.-PC.126
clc;
CH_3COONa_1=0.01                 //moldm^-3
CH_3COOH_1=0.1                   //moldm^-3
K_a=1.75*10^-5
pK_a=-log10(K_a)
pH1=pK_a +(log10(CH_3COONa_1/CH_3COOH_1))
disp(pH1,'pH of the given buffer solution')
HCl=0.0002                        //moles
CH_3COONa_2=0.01+0.0002            // moldm^-3
CH_3COOH_2=0.1-0.002               //moldm^-3
pH2=pK_a +(log10(CH_3COONa_2/CH_3COOH_2))
disp(pH2,'pH of the solution after addition of HCl')
C_1=pH1-pH2                   //change in pH (M)
CH_3COONa_3=0.01+0.002                //moldm^-3
CH_3COOH_3=0.1-0.002                  //moldm^-3
pH3=pK_a +(log10(CH_3COONa_3/CH_3COOH_3))
pH4=pH1-pH3                //change in pH
disp(pH4,'Required pH')









