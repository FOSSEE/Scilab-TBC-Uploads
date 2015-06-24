//Caption:K-Samples Tests
//K-samples Median Test
//Example9.22
//Page349
//Ho: There is no significant difference between the ages of respondents in three regions
//H1: There is significant difference between the ages of respondents in three regions
clear;
clc;
X1 = [35,42,28,31,44,50,33,52,56];//Age of Respondents in Region-1
X2 = [45,55,32,47,53,46,41,34,49];//Age of Respondents in Region-2
X3 = [38,36,43,30,60,39,54,57,27];//Age of Respondents in Region-3
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
//v1 = factorial(n1)/((factorial(n1-p1))*(factorial(p1)));
//v2 = factorial(n2)/((factorial(n2-p2))*(factorial(p2)));
//v3 = factorial(n3)/((factorial(n3-p3))*(factorial(p3)));
//v4 = factorial(N)/((factorial(N-(p1+p2+p3)))*(factorial(p1+p2+p3)));
//P = (v1*v2*v3)/v4;
//disp(P,'calculated Probability  value  =')
[r,c] = size(p);
for i = 1:r
    for j = 1:c
        Row_Tot(i) = sum(p(i,:));
        Col_Tot(j) = sum(p(:,j)); 
        e(i,j)     = (Row_Tot(i)* Col_Tot(j))/N;
    end
end
disp(Row_Tot,'Row Total=')
disp(Col_Tot','Column Total=')
chi = 0;
for i = 1:r
    for j =1:c
        chi= chi+(((p(i,j)-e(i,j))^2)/(e(i,j)));
    end
end
disp(chi,'The Chi-square Statistic value =')
Chi_stand = 5.991;//for 2 degrees of freedom and significance level = 0.05
disp(Chi_stand,'The table Chi-Square statistic for 2 degrees of freedom & alpha =0.05')
if (chi < Chi_stand) then
    disp('Since the calculated Chi-square statistic is less than table value')
    disp('Accept the Null Hypothesis')
else
    disp('Reject Null Hypothesis')
end
//Result
 
// The pooled observations in the increasing order are:   
// 
// 
//         column  1 to 17
// 
//    27.    28.    30.    31.    32.    33.    34.    35.    36.    38.    39.    41.    42.    43.    44.    45.    46.  
// 
//         column 18 to 27
// 
//    47.    49.    50.    52.    53.    54.    55.    56.    57.    60.  
// 
// The median of the pooled observations u =   
// 
//    43.  
// 
// Frequency of pooled observations   
// 
//    4.    6.    3.  
//    5.    3.    6.  
// 
// Row Total=   
// 
//    13.  
//    14.  
// 
// Column Total=   
// 
//    9.    9.    9.  
// 
// The Chi-square Statistic value =   
// 
//    2.0769231  
// 
// The table Chi-Square statistic for 2 degrees of freedom & alpha =0.05   
// 
//    5.991  
// 
// Since the calculated Chi-square statistic is less than table value   
// 
// Accept the Null Hypothesis   