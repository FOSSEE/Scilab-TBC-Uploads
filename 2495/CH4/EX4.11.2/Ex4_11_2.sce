clear
clc
KD=9;//distribution coefficient
M1=0.10825;//amount of p-nitroaniline in gm
N=0.00693;//amount of p-nitroaniline chlorine dissolved in mol
N0=0.04342;//molarity of dil HCl
m1=138;//molar mass of p-nitroaniline in gm/mol
N1=60;//amount of benzene added in cm^3
N2=25;//amount of benzene withdrawn in cm^3
M2=(M1/m1);//amount of free base in 25cm^3 of benzene
X=(M2*(N1/N2));//amount in mol
M=(X/(N1/1000));//in mol/dm^3
M0=(M/KD);//molar concentration of free bas e in aqeous solution
C=(N-(X+M0));//concentration of unhydrolyzed cation
C1=(X+M0);//amount of free base in benzene and water
Ct=(N0+C1);//total amount of acid
Kh=(M0*Ct)/C;//hydrolysis constant
printf('kh=%.4f mol/dm^3',Kh)

//There are some errors in the solution given in textbook
//page 201


