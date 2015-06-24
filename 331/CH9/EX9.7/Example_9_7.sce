//Caption: Kolmogorov-Smirnov Test
//Example9.7
//Page321
//Ho: The given set of observations follows the uniform distribution
//H1: The given set of observations does not follow the uniform distribution
clear;
clc;
X = [30,31,32,33,34,35,36,37,38,39]; //Demand in tons
o = [2,3,1,4,2,2,4,2,4,1];//Observed frequency
n = sum(o);//total observed frequencies
alpha = 0.05;//significance level
N = length(X); //Number of values of the random variable
ExFre = n/N; //Expected frequency for each
disp(ExFre,'Expected Frequency for each =')
ExPr = ExFre/n;// Expected probability for each
disp(ExPr,'Expected probability for each=')
for i = 1:N
    EP(i)= ExPr;
end
op = o./(N*ExFre);//Observed probability
disp(op,'Observed Probability=')
OF = cumsum(op);//Observed cumulative probability
disp(OF,'Observed Cumulative Probability OF =')
EF = cumsum(EP);//Expected cumulative probability
disp(EF,'Expected Cumulative Probability EF =')
for i = 1:N
    D(i) = abs(OF(i)-EF(i));
end
disp(D,'Calculated difference absolute value D =')
Dn = 0.27;//theoretical value for a significance level of 0.05
disp(Dn,'Theoretical table value for a significance level of 0.05=')
[Dcal,ind]= max(D); 
if (Dcal<Dn) then
    disp('Since Dcal is less than the table value Dn accept the null hypothesis Ho')
else
    disp('Sinc Dcal > Dn table value reject null hypothesis Ho')
end
//Result
// Expected Frequency for each =   
//     2.5  
// Expected probability for each=   
//     0.1  
// Observed Probability=   
//     0.08    0.12    0.04    0.16    0.08    0.08    0.16    0.08    0.16    0.04  
// Observed Cumulative Probability OF =   
//     0.08    0.2    0.24    0.4    0.48    0.56    0.72    0.8    0.96    1.  
// Expected Cumulative Probability EF =   
//    0.1  
//    0.2  
//    0.3  
//    0.4  
//    0.5  
//    0.6  
//    0.7  
//    0.8  
//    0.9  
//    1.   
// Calculated difference absolute value D =   
//  10^(-8) *
// 
//    2000000.   
//    0.         
//    6000000.   
//    0.         
//    2000000.   
//    4000000.   
//    2000000.   
//    1.110D-08  
//    6000000.   
//    1.110D-08  
// Theoretical table value for a significance level of 0.05=   
//     0.27  
// Since Dcal is less than the table value Dn accept the null hypothesis Ho 