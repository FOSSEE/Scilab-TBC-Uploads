clear
clc
M1=152.2;//molar mass of carbon in gm
T1=451.55;//melting point temp in K
T2=433.85;//melting point temp in K(for unknown compound)
w2=0.0386;//mass of unknown compound in gm
w1=0.522;//mass of camphor in solution in gm
R=8.314;//J/Kmol
DelHm_f=6.844;//in KJ
Kf=(((R*T1^2)/(DelHm_f*10^3))*(M1/1000))
printf('Kf=%.1f',Kf)
DelT_f=(T1-T2);
B=(DelT_f/Kf);//molality of the solution in mol/kg
printf('\nB=%.2f mol/kg',B)
M2=(w2/B)*(1000/w1);
printf('\nM2=%.1f gm/mol',M2)
Z=92.3/7.7;//mass ratio of wC and wH
N0=1/12;//atomic ratio of H and C
K=(Z*N0);
printf('\nK=%.1f',K)

//Clearly we get K=1.0 implies empirical formula is CH
Me=13;//empirical mass in gm
N=(M2/Me);//no. of units of CH
printf('\nN=%.1f',N)

//Taking approximately equal to 12 Molecular formula is C12H12
//There are some errors in the solution given in textbook
//page 58
