n =5;
Xbar = 9.5;
uo = 8;
var = 4;
statistic = sqrt(n/var)*(Xbar - uo);
p = 1 - cdfnor("PQ", statistic, 0, 1);
disp("The test would call for rejection at all significance levels greater than or equal to ")
disp(p);