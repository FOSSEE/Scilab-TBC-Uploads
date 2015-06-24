x = [28 34 32 38 22];
claim = 25;
total = sum(x);
pval = 1 - cdfpoi("PQ", total-1, (claim*length(x)));
disp(pval, "The pvalue is")