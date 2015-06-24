//Caption: Two-samples Medain Test
//Example9.17
//Page339
clear;
clc;
n1 = 7;//size of the first sample
n2 = 6;//size of the second sample
N = n1+n2;//size of the pooled obsrevations
alpha = 0.05;//significance level
S1 = [20,25,41,35,60,40,28];//sample 1:increased warranty period
S2 = [23,27,30,42,56,48];//sample 2: Increased price discount
X = [S1,S2];//increased warranty period & Increased price discount
Xsort = gsort(X,'g','i');
u = median(Xsort);
disp(Xsort,'The pooled observations in the increasing order are:')
disp(u,'The median of the pooled observations u =')
p1 = 0;
p2 = 0;
for i = 1:length(S1)
    if (S1(i)>u) then
        p1 = p1+1;
    elseif(S1(i)<=u)
        p2 = p2+1;
    end  
end

p3 = 0;
p4 = 0;
for i = 1:length(S2)
    if (S2(i)>u) then
        p3 = p3+1;
    elseif(S2(i)<=u)
        p4 = p4+1;
    end
end
p = [p1,p3;p2,p4]
v1 = factorial(n1)/((factorial(n1-p1))*(factorial(p1)));
v2 = factorial(n2)/((factorial(n2-p3))*(factorial(p3)));
v3 = factorial(n1+n2)/((factorial(n1+n2-(p1+p3)))*(factorial(p1+p3)));;
P = (v1*v2)/v3;
disp(P,'calculated P value  =')
if (P>alpha) then
    disp('Since the calculated probability is more than the significance level')
    disp('Accept the Null Hypothesis')
else
    disp('Reject Null Hypothesis')
end
//Result
//The pooled observations in the increasing order are:   
// 
//    20.    23.    25.    27.    28.    30.    35.    40.    41.    42.    48.    56.    60.  
// 
// The median of the pooled observations u =   
// 
//    35.  
// 
// calculated P value  =   
// 
//    0.4079254  
// 
// Since the calculated probability is more than the significance level   
// 
// Accept the Null Hypothesis  