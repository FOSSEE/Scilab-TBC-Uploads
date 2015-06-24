A = [61.1 58.2 62.3 64 59.7 66.2 57.8 61.4 62.2 63.6];
B= [62.2 56.6 66.4 56.2 57.4 58.4 57.6 65.4];
uA = mean(A);
uB = mean(B);
n= length(A);
m =length(B);
Sx = variance(A);
Sy = variance(B);
Sp = ((n-1)*Sx/(n+m-2)) + ((m-1)*Sy/(n+m-2));
den = sqrt(Sp*((1/n)+(1/m)));
TS = (uA-uB)/den;
disp(TS, "The test statistic is");
pvalue = 2*(1- cdft("PQ", TS, m+n-2));
//disp(tvalue)
disp(pvalue, "Null hypothesis is accepted at any significance level less than")
