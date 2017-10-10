//ques-5.18
//Calculating solubility of Strontium fluoride
clc
K=8;//solubility product (x10^-12)
c=0.1;//content of NaF (in M)
S=K/c^2;//solubility (x10^-12)
printf("The required solubility is %.0f*10^-10 mol/L.",S/100);

