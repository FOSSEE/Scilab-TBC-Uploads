//Caption: Two-samples Medain Test (Large Samples)
//Example9.18
//Page340
clear;
clc;
S1 = [25,30,46,40,65,45,33,35,41,51,64,66,77,82,96,68];//sample 1:Catalyst X
S2 = [28,32,42,47,62,53,29,34,54,57,63,70,80,78,93];//sample 2: Catalyst Y
n1 = length(S1);//size of the first sample
n2 = length(S2);//size of the second sample
N = n1+n2;//size of the pooled obsrevations
alpha = 0.05;//significance level
X = [S1,S2];//increased warranty period & Increased price discount
Xsort = gsort(X,'g','i');
u = median(Xsort);
disp(Xsort,'The pooled observations in the increasing order are:')
disp(u,'The median of the pooled observations u =')
p = 0;
r = 0;
for i = 1:length(S1)
    if (S1(i)>u) then
        p = p+1;
    elseif(S1(i)<=u)
        r = r+1;
    end  
end

q = 0;
s = 0;
for i = 1:length(S2)
    if (S2(i)>u) then
        q = q+1;
    elseif(S2(i)<=u)
        s = s+1;
    end
end
P = [p,q;r,s]
disp(P,'Table. Frequency of pooled observations')
chi_calc = (N*(abs(p*s-q*r)-(N/2))^2)/((p+q)*(r+s)*(p+r)*(q+s));
chi_table = 3.841;//chi-square value for 1 degree of freedom and alpha = 0.05
disp(chi_calc,'calculated chi-square value  =')
disp(chi_table,'chi-square table value=')
if (chi_calc < chi_table) then
    disp('Since the calculated chi-square value is less than the table value')
    disp('Accept the Null Hypothesis')
else
    disp('Reject Null Hypothesis')
end
//Result
//The pooled observations in the increasing order are:   
//        column  1 to 17
// 
//  25.    28.    29.    30.    32.    33.    34.    35.    40.    41.    42.    45.    46.    47.    51.    53.    54.  
// 
//         column 18 to 31
// 
//  57.    62.    63.    64.    65.    66.    68.    70.    77.    78.    80.    82.    93.    96.  
// 
// The median of the pooled observations u =   
// 
//    53.  
// 
// Table. Frequency of pooled observations   
// 
//    7.    8.  
//    9.    7.  
// 
// calculated chi-square value  =   
// 
//    0.0302734  
// 
// chi-square table value=   
// 
//    3.841  
// 
// Since the calculated chi-square value is less than the table value   
// 
// Accept the Null Hypothesis