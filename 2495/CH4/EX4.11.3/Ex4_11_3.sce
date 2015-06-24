clear
clc
KD=25.8;//
M1=0.385;//concentration of NH3 in aqueous CuSO4 solution in mol/dm^-3
M2=0.0112;//concentration of NH3 in chloroform in mol/dm^-3
m=0.025;//concentration of CuSO4 in mol/dm^-3
M0=(M2*KD);//concentration of NH3 in aqueous layer in mol/dm^-3
M=M1-M0;//concentration of combined NH3 in mol/dm^-3
X=(M/m);//
printf('X=%.2f',X)

// X is approximately equal to 4
//page 202
