X = [8.6 9.4 5.0 4.4 3.7 11.4 10.0 7.6 14.4 12.2 11.0 14.4 9.3 10.5 10.3 7.7 8.3 6.4 9.2 5.7 7.9 9.4 9.0 13.3 11.6 10.0 9.5 6.6];
n = length(X);
uo = 8;
Xbar=mean(X);
sd = sqrt(variance(X));
T = sqrt(n)*(Xbar - uo)/sd;
disp(T, "The test statistic is ")
p = 1- cdft("PQ", T, n-1);
disp(p, "P-value is")
disp("A small p value indicates that the mean service time exceeds 8 minutes")