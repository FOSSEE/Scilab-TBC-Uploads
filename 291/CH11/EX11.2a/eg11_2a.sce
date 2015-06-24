X = [90 100 87 96 101 86 119 118 121 114 113 106];
pi= ones(12,1);
pi= pi/12;
new = X.^2;
npi= sum(X)*pi;
T = sum(new);
T = T/npi;
T = T - sum(X);
disp("When there are 12 regions")
disp(T(1), "The test statistic is")
pvalue = 1- cdfchi("PQ",T(1), 11);
disp(pvalue, "The pvalue is ")

X = [277 283 358 333];
pi= ones(4,1);
pi= pi/4;
new = X.^2;
npi= sum(X)*pi;
T = sum(new);
T = T/npi;
T = T - sum(X);
disp("When there are 4 regions")
disp(T(1), "The test statistic is")
pvalue = 1- cdfchi("PQ",T(1), 3);
disp(pvalue, "The pvalue is ")