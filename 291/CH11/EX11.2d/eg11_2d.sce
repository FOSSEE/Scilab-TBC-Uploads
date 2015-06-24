X = [3 3 5 18 4 7];
p= [0.1 0.1 0.05 0.4 0.2 0.15];
psimu = 0.1843; //p-value obtained by simulation
num= 10000;
T= 0;
n=sum(X);
np = n*p;
Xsqu = X.^2;
for i= 1:6
    T = T + (Xsqu(i)/np(i));
end
T = T - sum(X);

disp(T(1), "The test statistic is")
pvalue = 1- cdfchi("PQ",T(1), 5);
//disp(pvalue, "The pvalue is ")
int1 = psimu - (1.645*sqrt(psimu*(1-psimu)/num));
int2 = psimu + (1.645*sqrt(psimu*(1-psimu)/num));
disp("With 90% confidence p-value lies between ")
disp(int1)
disp("and")
disp(int2);