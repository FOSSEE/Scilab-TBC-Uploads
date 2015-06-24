r = 30;
T = 600;
theta = 25;
val1 = cdfchi("PQ", 2*T/theta, 2*r);
val2 = 1- cdfchi("PQ", 2*T/theta, 2*(r+1));
pvalue = min(val1, val2);
disp(pvalue, "The pvalue is");
disp("H0 would be accepted when the significance level is 0.10");