A = [30.5 18.5 24.5 32 16 15 23.5 25.5 28 18];
B = [23 21 22 28.5 14.5 15.5 24.5 21 23.5 16.5];
n= length(A);
W = B-A;
Wbar = mean(W);
S = sqrt(variance(W));
T = sqrt(n)*Wbar/S;

disp(T, "The test statistic is");
pvalue =  cdft("PQ", T, n-1);
//disp(tvalue)
disp(pvalue, "The p value is")
