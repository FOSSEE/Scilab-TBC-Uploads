S1 = 0.14;
S2 = 0.28;
n= 10;
m= 12;
ratio  = S1/S2;
prob1 = cdff("PQ", ratio, n-1, m-1);
prob2 = 1-prob1;
prob = min([prob1 prob2]);
pvalue = 2*prob;
disp(pvalue, "The p value is")
disp("So the hypothesis of equal variance cannot be rejected")

 