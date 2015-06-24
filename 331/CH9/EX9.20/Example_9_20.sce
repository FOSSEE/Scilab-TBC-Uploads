//Caption:Mann-Whitney U Test
//Example9.20
//Page344
//Ho: Two samples are drawn from identical populaions
//H1: Two samples are not drawn from indentical populations
//Rule for decision making: If the calculated ZU is less than -Zalpha/2 or more than
//+Zalpha/2, then reject Ho
//otherwise accept Ho

clc;
X1 = [94,77,64,88,65,55,75,93,62,68,83,73,90,60,63];//capacity utilization of machine-1 in %
X2 = [78,95,54,71,91,56,82,92,97,84,53,61,98,87];//capacity utilization of machine-2 in %
X= [X1,X2];//
n1 = length(X1);
n2 = length(X2);
N = length(X);
[X_sort,ind] = gsort(X,'g','i');
disp(X_sort,'Index:')
R = ind;
for i =1:N
    R(i)=i;
    for j= 1:n1
        if(X_sort(i)==X1(j))
            R_S1(j) =  R(i);
        elseif (j<=n2)&(X_sort(i)==X2(j))
            R_S2(j) =  R(i);
        end
    end
end
disp(R,'Rank')
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
alpha = 0.1;//significance level
alpha = alpha/2;
Z_stand = standard_normal_zstat(alpha);
disp(ZU,'Calculated Z statistic ZU=')
disp(Z_stand,'Standard normal z statistic Z_Stand=')
if (-Z_stand< ZU)&(ZU < Z_stand) 
    disp('Since the computed ZU is lies in between -Zalpha and + Zalpha, accept the Null hypothesis')
else
    disp('Reject the Null hypothesis')
end
//Result
// Index:   
//    column  1 to 17
//     53.    54.    55.    56.    60.    61.    62.    63.    64.    65.    68.    71.    73.    75.    77.    78.    82.  
//    column 18 to 29
//     83.    84.    87.    88.    90.    91.    92.    93.    94.    95.    97.    98.  
// Rank   
//    column  1 to 18
//     1.    2.    3.    4.    5.    6.    7.    8.    9.    10.    11.    12.    13.    14.    15.    16.    17.    18.   column 19 to 29
//     19.    20.    21.    22.    23.    24.    25.    26.    27.    28.    29.  
// Ranks of Sample-1=   
//    3.   
//    5.   
//    7.   
//    8.   
//    9.   
//    10.  
//    11.  
//    13.  
//    14.  
//    15.  
//    18.  
//    21.  
//    22.  
//    25.  
//    26.  
// 
// Ranks of Sample-2=   
//    1.   
//    2.   
//    4.   
//    6.   
//    12.  
//    16.  
//    17.  
//    19.  
//    20.  
//    23.  
//    24.  
//    27.  
//    28.  
//    29.  
// 
// The sum of the ranks of the sample-1   
//     207.  
// The sum of the ranks of the sample-2   
//     228.  
// U=  123.  
// Mean uU=    105.  
// variance =   525.  
// Standard Deviation=   22.912878  
// Calculated Z statistic ZU=  0.7855844  
// Standard normal z statistic Z_Stand=  1.64  
// Since the computed ZU is lies in between -Zalpha and + Zalpha, accept the Null hypothesis 