//ques-5.3
//Finding specific and equivalent conductance of acid
clc
R1=225;//resistance of KCl (in ohms)
k1=0.00141;//specific conductance of KCl (in mho/cm)
R2=80;//resistance of acid solution (in ohms)
N=0.02;//normality of acid
c=k1*R1;//cell constant (in /cm)
k2=c/R2;//specific conductance of acid solution (in mho/cm)
e=1000*(k2/N);////equivalent conductance of acid solution (in cm^2 mho/eq)
printf("The equivalent conductance of acid is %.2f cm^2 mho/eq and specific conductance is %.6f mho/cm.",e,k2);
