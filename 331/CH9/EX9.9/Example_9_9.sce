//Caption: Kolmogorov-Smirnov Test
//Example9.9
//Page323
//Ho: The given set of observations follows normal distribution
//H1: The given set of observations does not follow the normal distribution
clear;
clc;
X =[0,5;5,10;10,15;15,20;20,25;25,30;30,35]; //Demand
o = [4,9,15,20,18,7,5]; //Observed frequency
alpha = 0.10; //significance level
n = sum(o); //total observed frequency
[m1,n1] = size(X);
for i = 1:m1
    Xmid(i) =  sum(X(i,:))/2;
    Xo(i)= Xmid(i)*o(i);
end
Xioi = sum(Xo);
u = Xioi/n; //mean demand
N = length(Xmid);//Number of ranges for the random variable
Var = variance(Xmid)/2;
Std = sqrt(Var);
alpha = 0.10;//significance level
for i =1:N
    Z_Stand(i) = (Xmid(i)-u)/Std;
    [P(i),Q(i)]=cdfnor("PQ",Xmid(i),u,Std)
end
op = o/n;
EF = cumsum(op);
disp(op,'Observered probability=')
disp(Z_Stand,'Calculated z value=');
disp(P,'Observed cumulative Probability Z(OF) =');
disp(EF,'Expected cumulative probability EF = ');
for i = 1:N
    D(i) = abs(P(i)-EF(i));
end
[Dcal,ind] = max(D);
Dn = 1.22/sqrt(n);
disp(D,'Calculated D values Di = ');
disp(Dcal,'Maximum D value Dcal =');
disp(Dn,'Theoritical D value of Dn for the sample size n =78, D78 =');
if (Dcal<Dn) then
    disp('Since Dcal is less than the table value Dn accept the null hypothesis Ho')
else
    disp('Sinc Dcal > Dn table value reject null hypothesis Ho')
end
//Result
// 
// Observered probability=   
// 
//    0.0512821    0.1153846    0.1923077    0.2564103    0.2307692    0.0897436    0.0641026  
// 
// Calculated z value=   
// 
//  - 1.980747   
//  - 1.3260933  
//  - 0.6714397  
//  - 0.0167860  
//    0.6378677  
//    1.2925213  
//    1.947175   
// 
// Observed cumulative Probability Z(OF) =   
// 
//    0.0238098  
//    0.0924044  
//    0.2509702  
//    0.4933037  
//    0.7382201  
//    0.9019117  
//    0.9742431  
// 
// Expected cumulative probability EF =    
// 
//    0.0512821    0.1666667    0.3589744    0.6153846    0.8461538    0.9358974    1.  
// 
// Calculated D values Di =    
// 
//    0.0274722  
//    0.0742623  
//    0.1080041  
//    0.1220809  
//    0.1079338  
//    0.0339858  
//    0.0257569  
// 
// Maximum D value Dcal =   
// 
//    0.1220809  
// 
// Theoritical D value of Dn for the sample size n =78, D78 =   
// 
//    0.1381378  
// 
// Since Dcal is less than the table value Dn accept the null hypothesis Ho   
//