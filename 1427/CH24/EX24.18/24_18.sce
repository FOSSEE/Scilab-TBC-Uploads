//ques-24.18
//Calculating solubility of iodine in carbon tetrachloride
clc
C1=0.0516;//concentration of iodine in aqueous solution (in g/L)
C2=4.412;//concentration of iodine in CCl4 solution (in g/L)
S1=0.34;//solubility of iodine in water (in g/L)
S2=S1*(C2/C1);
printf("The solubility of iodine in carbon tetrachloride is %.2f g/L.",S2);
