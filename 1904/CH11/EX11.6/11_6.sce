//To Find The Probability on the reliability of transformers
//Page 614
clc;
clear;

//Reliabilities of The Three Transformers
Pa=0.9;
Pb=0.95;
Pc=0.99;

//Faliures of Three Transformers
Qa=1-Pa;
Qb=1-Pb;
Qc=1-Pc;

//Probability of NO Transformer Failing
Pnf=Pa*Pb*Pc;

PfA=Qa*Pb*Pc//Probability of Transformer A Failing
PfB=Pa*Qb*Pc//Probability of Transformer B Failing
PfC=Pa*Pb*Qc//Probability of Transformer C Failing

PfAB=Qa*Qb*Pc//Probability of Transformer A and B Failing
PfBC=Pa*Qb*Qc//Probability of Transformer B and C Failing
PfCA=Qa*Pb*Qc//Probability of Transformer C and A Failing

Pf=Qa*Qb*Qc; //Probability of All Transformers failing

printf('\na) Probability of No Transformer Failing is %g\n',Pnf)
printf('\nb)\n')
printf('Probability of Transformer A Failing is %g\n',PfA)
printf('Probability of Transformer B Failing is %g\n',PfB)
printf('Probability of Transformer C Failing is %g\n',PfC)
printf('\nc)\n')
printf('Probability of Transformers A and B Failing is %g\n',PfAB)
printf('Probability of Transformers B and C Failing is %g\n',PfBC)
printf('Probability of Transformers C and A Failing is %g\n',PfCA)
printf('\nd) Probability of All Three Transformers Failing is %g\n',Pf)
