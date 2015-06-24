clear
clc
M=78*10^-3;//molar mass of C6H6 in Kg/mol
R=8.314;//gas constant in J/Kmol
Tf2=278.4;//melting point of pure C6H6 in K
DelHm_v=10.042*10^3;//heat of fusion in J/mol
Kf=((M*R*Tf2^2)/DelHm_v);//inKkg/mol
Tf1=277.4;//melting point of C6H6 in Kg/mol
M1=(Tf2-Tf1)/Kf;//molality in mol/kg
X1=0.02;//molefraction of CH3COOH
M2=X1/M;//molality in mol/kg
Md=(M2-M1);//molality of dimer in mol/kg
Mm=M1-Md;//molality of monomer in mol/kg
Keq=(Md)/(Mm^2);//equilibrium constant fo dimerization of CH3COOH
printf('Keq=%.2f',Keq)

//There are some errors in the solution given in textbook
//page 76
