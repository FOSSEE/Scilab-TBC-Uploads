//ques-34.10
//Calculating absorbance and molar absorption coefficient and percentage transmittancy
clc
ratio=100/19.2;//= Io/I
l1=1; l2=10;//thickness of cell (in cm)
C=5*10^-4;//concentration of cell (in M)
A=log10(ratio);
EC=A/(C*l1);
//On solving, log10(tran) = EC*C*l2
tran=56.2;
printf("The absorbance is %.3f, molar absorption coefficient is %d M/cm and percentage transmittancy for 10cm thick cell is %.1f.",A,EC,tran);
