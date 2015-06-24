Aerror =28;
Berror = 18;
common =10;
N2 = Aerror - common;
N3 =Berror- common;
pval = 1- cdfbin("PQ", N2-1, N2 + N3, 0.5, 0.5);
disp(pval, "P-value is")