//Caption:Run Test for Randomness
//Example9.10
//Page325
//run test of randomness of small samples
//Ho: The occurrence of the runs of the given stream of symbols (M,F) is random
//H1: The occurrence of the runs of the given stream of symbols (M,F) is not random
clear;
clc;
X = ['M','M','F','F','F','M','M','M','F','F','F','M','F','M','M','M','M','F','F'];
N = sum(length(X));
n1 = 0;
n2 = 0;
r = 0;
ind1 = 0;
c1 = 0;
ind2 = 0;
c2 = 0;
for i = 1:N
    if(X(i)=='M')
        n1 = n1+1;
    elseif(X(i)=='F')
        n2 = n2+1;
    end
    if (i~=N) then
        if((X(i)=='M')&(X(i+1)=='F'))
             r = r+1;
        elseif((X(i)=='F')&(X(i+1)=='M'))
             r= r+1;
        end
    else
        r = r+1;
    end
end
disp(n1,'Frequency of occurrence of letter M, n1=');
disp(n2,'Frequency of occurrence of letter N, n2=');
disp(r,'Number of runs, rcal =')
alpha = 0.05;//significance level
c1 = 5;//smaller critical value for the given combination at alpha =0.05;
c2 = 16; //larger critical value for the given combination at alpha =0.05;
if (c1<r) &(r<c2) then
    disp('Accept Null Hypotheis Ho')
else
    disp("Reject Null Hypothesis Ho')
end
//Result
//Frequency of occurrence of letter M, n1=   
// 
//    10.  
// 
// Frequency of occurrence of letter N, n2=   
// 
//    9.  
// 
// Number of runs, rcal =   
// 
//    8.  
// 
// Accept Null Hypotheis Ho 
