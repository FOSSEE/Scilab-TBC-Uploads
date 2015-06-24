//Caption: Kolmogorov-Smirnov Test
//Example9.8
//Page322
//Ho: The given set of observations follows poisson distribution
//H1: The given set of observations does not follow the poisson distribution
clear;
clc;
X = [0,1,2,3,4,5,6]; //Arrival rate
o = [2,6,18,12,8,3,1];//Observed frequency
n = sum(o);//total observed frequencies
alpha = 0.05;//significance level
N = length(X); //Number of values of the random variable
for i = 1:length(X)
    Xo(i)= X(i)*o(i);
end
Xioi = sum(Xo);
u = Xioi/n; //mean arrival rate
for i = 1:length(X)
   P(i)= ((u^X(i))*exp(-u))/factorial(X(i));
end
op = o/n;
disp(op,'Observed Probability=');
disp(P,'Expected Probability=');
OF = cumsum(op);
EF = cumsum(P);
disp(OF,'Observed cumulative probability=')
disp(EF,'Expected cumulative probability=')
for i = 1:N
    D(i) = abs(OF(i)-EF(i));
end
disp(D,'Calculated difference absolute value D =')
Dn = 1.36/sqrt(n);//theoretical value for a significance level of 0.05
disp(Dn,'Theoretical table value for a significance level of 0.05=')
[Dcal,ind]= max(D); 
disp(Dcal,'The maximum value of D is Dcal=')
if (Dcal<Dn) then
    disp('Since Dcal is less than the table value Dn accept the null hypothesis Ho')
else
    disp('Sinc Dcal > Dn table value reject null hypothesis Ho')
end
//Result
 
// Observed Probability=   
// 
//    0.04    0.12    0.36    0.24    0.16    0.06    0.02  
// 
// Expected Probability=   
// 
//    0.0728029  
//    0.1907435  
//    0.2498740  
//    0.2182233  
//    0.1429362  
//    0.0748986  
//    0.0327057  
// 
// Observed cumulative probability=   
// 
//    0.04    0.16    0.52    0.76    0.92    0.98    1.  
// 
// Expected cumulative probability=   
// 
//    0.0728029  
//    0.2635464  
//    0.5134203  
//    0.7316436  
//    0.8745799  
//    0.9494785  
//    0.9821842  
// 
// Calculated difference absolute value D =   
// 
//    0.0328029  
//    0.1035464  
//    0.0065797  
//    0.0283564  
//    0.0454201  
//    0.0305215  
//    0.0178158  
// 
// Theoretical table value for a significance level of 0.05=   
// 
//    0.1923330  
// 
// The maximum value of D is Dcal=   
// 
//    0.1035464  
// 
// Since Dcal is less than the table value Dn accept the null hypothesis Ho  