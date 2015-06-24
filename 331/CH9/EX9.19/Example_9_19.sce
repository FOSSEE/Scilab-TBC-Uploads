//Caption:Mann-Whitney U Test
//Example9.19
//Page342
//Ho: Two samples are drawn from different populations having the same distribution
//H1: The mean performance ratings of the programmers from the population of the 
//Branch-1 is stochastically larger than that of the programmers from the population
//of the Branch-2
//Rule for decision making: If the calculated ZU is more than Zalpha, then reject Ho
//otherwise accept Ho

clc;
X1 = [87,76,57,50,43,73,40,90,75,85,91,68,73,79,59,50,35,82,73,66];//Performance indices of branch-1
X2 = [78,55,92,71,25,62,45,77,34,50,83,97,53,89,74,30,54,32];//performance indices of branch-2
X= [X1,X2];//
n1 = length(X1);
n2 = length(X2);
N = length(X);
[X_sort,ind] = gsort(X,'g','i');
disp(ind,'Rank:');
disp(X_sort,'Index:')
j = 1;
for i = 1:N
   R(i)=i;
   if (i~=N) then
       if (X_sort(i)==X_sort(i+1)) then
           K(j)=i;
           j = j+1;
       elseif (i>1)&(X_sort(i)==X_sort(i-1))
           K(j)= i;
           j = j+1;
       end
   end
end
for i = 1:length(K)
    if (i<=floor(length(K)/2)) then
        R(K(i))= sum(K([1:floor(length(K)/2)]))/floor(length(K)/2);
    elseif(i>floor(length(K)/2))
        R(K(i))= sum(K([floor(length(K)/2)+1:length(K)]))/floor(length(K)/2);
    end
end
disp(R,'Revised Rank')
for i =1:N
    for j= 1:n1
        if(X_sort(i)==X1(j))
            R_S1(j) =  R(i);
        elseif (j<=n2)&(X_sort(i)==X2(j))
            R_S2(j) =  R(i);
        end
    end
end
R_S1 = gsort(R_S1,'g','i');
disp(R_S1,'Ranks of Sample-1=');
R_S2 = gsort(R_S2,'g','i');
disp(R_S2,'Ranks of Sample-2=');
Sum_R_S1 = sum(R_S1);
disp(Sum_R_S1,'The sum of the ranks of the sample-1')
Sum_R_S2 = sum(R_S2);
disp(Sum_R_S2,'The sum of the ranks of the sample-2')
U = n1*n2+(n1*(n1+1)/2)-Sum_R_S1;
disp(U,'U=')
uU = n1*n2/2; //mean
disp(uU,'Mean uU=')
sigU = n1*n2*(n1+n2+1)/12; //variance
disp(sigU,'variance =')
Std = sqrt(sigU);
disp(Std,'Standard Deviation=')
ZU = (U-uU)/Std;
alpha = 0.05;//significance level
Z_stand = standard_normal_zstat(alpha);
disp(ZU,'Calculated Z statistic ZU=')
disp(Z_stand,'Standard normal z statistic Z_Stand=')
if (ZU < Z_stand) 
    disp('Since the computed ZU is less than Zalpha, accept the Null hypothesis')
else
    disp('Reject the Null hypothesis')
end
//Result
//  Rank:   
//         column  1 to 17
// 
//    25.    36.    38.    29.    17.    7.    5.    27.    4.    16.    30.    33.    37.    22.    3.    15.    26.  
// 
//         column 18 to 34
// 
//    20.    12.    24.    6.    13.    19.    35.    9.    2.    28.    21.    14.    18.    31.    10.    1.    34.  
// 
//         column 35 to 38
// 
//    8.    11.    23.    32.  
// 
// Index:   
// 
// 
//         column  1 to 17
// 
//    25.    30.    32.    34.    35.    40.    43.    45.    50.    50.    50.    53.    54.    55.    57.    59.    62.  
// 
//         column 18 to 34
// 
//    66.    68.    71.    73.    73.    73.    74.    75.    76.    77.    78.    79.    82.    83.    85.    87.    89.  
// 
//         column 35 to 38
// 
//    90.    91.    92.    97.  
// 
// Revised Rank   
// 
//    1.   
//    2.   
//    3.   
//    4.   
//    5.   
//    6.   
//    7.   
//    8.   
//    10.  
//    10.  
//    10.  
//    12.  
//    13.  
//    14.  
//    15.  
//    16.  
//    17.  
//    18.  
//    19.  
//    20.  
//    22.  
//    22.  
//    22.  
//    24.  
//    25.  
//    26.  
//    27.  
//    28.  
//    29.  
//    30.  
//    31.  
//    32.  
//    33.  
//    34.  
//    35.  
//    36.  
//    37.  
//    38.  
// 
// Ranks of Sample-1=   
// 
//    5.   
//    6.   
//    7.   
//    10.  
//    10.  
//    15.  
//    16.  
//    18.  
//    19.  
//    22.  
//    22.  
//    22.  
//    25.  
//    26.  
//    29.  
//    30.  
//    32.  
//    33.  
//    35.  
//    36.  
// 
// Ranks of Sample-2=   
// 
//    1.   
//    2.   
//    3.   
//    4.   
//    8.   
//    10.  
//    12.  
//    13.  
//    14.  
//    17.  
//    20.  
//    24.  
//    27.  
//    28.  
//    31.  
//    34.  
//    37.  
//    38.  
// 
// The sum of the ranks of the sample-1   
// 
//    418.  
// 
// The sum of the ranks of the sample-2   
// 
//    323.  
// 
// U=   
// 
//    152.  
// 
// Mean uU=   
// 
//    180.  
// 
// variance =   
// 
//    1170.  
// 
// Standard Deviation=   
// 
//    34.205263  
// 
// Calculated Z statistic ZU=   
// 
//  - 0.8185875  
// 
// Standard normal z statistic Z_Stand=   
// 
//    1.64  
// 
// Since the computed ZU is less than Zalpha, accept the Null hypothesis   
 