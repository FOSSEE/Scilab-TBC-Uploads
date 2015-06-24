n= 80;
v = 28;
p =0.5;

    pvalue = cdfbin("PQ", v, n, p,1-p);
disp(pvalue, "Pvalue is ");   
disp("Thus, the null hypothesis that the median income is less than or equal to $90,000 is rejected")