n =20;
S2= 0.025;
chk = 0.15;
compare = (n-1)*S2/(chk^2);
pvalue = 1- cdfchi("PQ", compare, n-1);
disp(pvalue, "The p-value is")
disp("Thus , the null hypothesis is accepted")