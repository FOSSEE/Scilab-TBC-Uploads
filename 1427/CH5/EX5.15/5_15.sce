//ques-5.15
//Calculating solubility product of AgCl
clc
S=0.00179;//solubility of AgCl (in g/L)
S=(S/170)*100000;//solubility (in mol/L x10^-5)
K=S^2;//solubility product (x10^-10)
printf("The solubility product of given AgCl is %.4f x 10^-10 mol^2/L^2.",K);
