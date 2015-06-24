A = [61.1 58.2 62.3 64 59.7 66.2 57.8 61.4 62.2 63.6];
B= [62.2 56.6 66.4 56.2 57.4 58.4 57.6 65.4];
uA = mean(A);
uB = mean(B);
varA = 40^2;
varB =60^2;
n= length(A);
m =length(B);
den = sqrt((varA/n)+ (varB/m));
statistic = (uA -uB)/den;
disp(statistic, "The test statistic is");
disp("A small value of the test statistic indicates that the null hypothesis is accepted")