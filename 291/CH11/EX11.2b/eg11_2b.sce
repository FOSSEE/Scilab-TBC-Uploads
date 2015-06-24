X = [3 6 9 7 5];
p= [0.15 0.25 0.35 0.20 0.05];
T= 0;
n3=sum(X);
np = p*n3;
Xsqu = (X-np).^2;
disp(Xsqu);
XT = Xsqu./np;
T = sum(XT);

//T = T - sum(X);
//disp("When there are 12 regions")
disp(T, "The test statistic is")
pvalue = 1- cdfchi("PQ",T(1), 4);
//a= cdfchi("PQ",T(1), 4);

disp(pvalue, "The pvalue is ")
disp("Thus, the hypothesis would not be rejected at 5% level of significance")