//Caption:K-Samples Tests
//K-samples Median Test
//Example9.21
//Page347
//Ho: There is no significant difference between the percentagge absenteeism of the
//employees in different months
//H1: There is significant difference between the percentage absenteeism of the
//employees in different months
clear;
clc;
X1 = [10,15,8,20,19];//Percentage absenteeism of employees for January month
X2 = [18,25,16,17,11];//Percentage absenteeism of employees for February month
X3 = [13,21,26,14,7];//Percentage absenteeism of employees for march month
n1 = length(X1);//size of the first sample
n2 = length(X2);//size of the second sample
n3 = length(X3);//size of the third sample
N = n1+n2+n3;//size of the pooled observations
alpha = 0.05;//significance level
X = [X1,X2,X3];
Xsort = gsort(X,'g','i');
u = median(Xsort);
disp(Xsort,'The pooled observations in the increasing order are:')
disp(u,'The median of the pooled observations u =')
p1 = 0;
q1 = 0;
for i = 1:length(X1)
    if (X1(i)>u) then
        p1 = p1+1;
    elseif(X1(i)<=u)
        q1 = q1+1;
    end  
end
p2 = 0;
q2 = 0;
for i = 1:length(X2)
    if (X2(i)>u) then
        p2 = p2+1;
    elseif(X2(i)<=u)
        q2 = q2+1;
    end
end
p3 = 0;
q3 = 0;
for i = 1:length(X3)
    if (X3(i)>u) then
        p3 = p3+1;
    elseif(X3(i)<=u)
        q3 = q3+1;
    end
end
p = [p1,p2,p3;q1,q2,q3]
disp(p,'Frequency of pooled observations');
v1 = factorial(n1)/((factorial(n1-p1))*(factorial(p1)));
v2 = factorial(n2)/((factorial(n2-p2))*(factorial(p2)));
v3 = factorial(n3)/((factorial(n3-p3))*(factorial(p3)));
v4 = factorial(N)/((factorial(N-(p1+p2+p3)))*(factorial(p1+p2+p3)));
P = (v1*v2*v3)/v4;
disp(P,'calculated Probability  value  =')
if (P>alpha) then
    disp('Since the calculated probability is more than the significance level')
    disp('Accept the Null Hypothesis')
else
    disp('Reject Null Hypothesis')
end
////Result
//The pooled observations in the increasing order are:   
// 
//    7.    8.    10.    11.    13.    14.    15.    16.    17.    18.    19.    20.    21.    25.    26.  
// 
// The median of the pooled observations u =   
// 
//    16.  
// 
// Frequency of pooled observations   
// 
//    2.    3.    2.  
//    3.    2.    3.  
// 
// calculated Probability  value  =   
// 
//    0.1554002  
// 
// Since the calculated probability is more than the significance level   
// 
// Accept the Null Hypothesis 