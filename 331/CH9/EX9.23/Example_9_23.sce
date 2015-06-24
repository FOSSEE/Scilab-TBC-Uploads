//Caption:Kruskal-Wallis Test (H Test)
//Example9.23
//Page350
//Ho: There is no significant difference between the production volumes of units assmebled by the three operators
//H1: There is significant difference between the production volumes of units assmebled by the three operators
clear;
clc;
X1 = [29,34,34,20,32,45,42,24,35];//Operator-1:production volume of Units Assembled
X2 = [30,21,23,25,44,37,34,19,38];//Operator-2:production volume of Units Assembled
X3 = [26,36,41,48,27,39,28,46,15];//Operator-3:production volume of Units Assembled
n1 = length(X1);//number of shifts worked by operator-1
n2 = length(X2);//number of shifts worked by operator-2
n3 = length(X3);//number of shifts worked by operator-3
N = n1+n2+n3;//total number of shifts
X =[X1,X2,X3];
[X_sort,ind] = gsort(X,'g','i');
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
disp(X_sort,'Observations of all samples=')
disp(R,'Ranks of all observations')
for i = 1:length(K)
    R(K(i))= sum(K(:))/length(K);
end
for i =1:N
    for j= 1:n1
        if(X_sort(i)==X1(j))
            R_S1(j) =  R(i);
        elseif (X_sort(i)==X2(j))
            R_S2(j) =  R(i);
        elseif (X_sort(i)==X3(j))
            R_S3(j) = R(i);
        end
    end
    
end
R_S1 = gsort(R_S1,'g','i');
disp(R_S1,'Ranks of Sample-1=');
R_S2 = gsort(R_S2,'g','i');
disp(R_S2,'Ranks of Sample-2=');
R_S3 = gsort(R_S3,'g','i');
disp(R_S3,'Ranks of Sample-3=');
Sum_R_S1 = sum(R_S1);
disp(Sum_R_S1,'The sum of the ranks of the sample-1')
Sum_R_S2 = sum(R_S2);
disp(Sum_R_S2,'The sum of the ranks of the sample-2')
Sum_R_S3 = sum(R_S3);
disp(Sum_R_S3,'The sum of the ranks of the sample-3')
H = (12/(N*(N+1)))*((Sum_R_S1^2/n1)+(Sum_R_S2^2/n2)+(Sum_R_S3^2/n3))-3*(N+1);
disp(H,'H~chi-square distribution with (K-1) degrees of freedom, where K is the total number of samples H=')
H_table = 5.991;//for 2 degrees of freedom & significance level = 0.05
disp(H_table,'H~chi-square table value for 2 degrees of freedom and significance level of 0.05=')
if(H<H_table)
    disp('Since the calculated value of H is < the table chi-square table, accept the null hypothesis' )
else
    disp('Reject null hypothesis')
end
//Result
 
// Observations of all samples=   
// 
// 
//         column  1 to 17
// 
//    15.    19.    20.    21.    23.    24.    25.    26.    27.    28.    29.    30.    32.    34.    34.    34.    35.  
// 
//         column 18 to 27
// 
//    36.    37.    38.    39.    41.    42.    44.    45.    46.    48.  
// 
// Ranks of all observations   
// 
//    1.   
//    2.   
//    3.   
//    4.   
//    5.   
//    6.   
//    7.   
//    8.   
//    9.   
//    10.  
//    11.  
//    12.  
//    13.  
//    14.  
//    15.  
//    16.  
//    17.  
//    18.  
//    19.  
//    20.  
//    21.  
//    22.  
//    23.  
//    24.  
//    25.  
//    26.  
//    27.  
// 
// Ranks of Sample-1=   
// 
//    3.   
//    6.   
//    11.  
//    13.  
//    15.  
//    15.  
//    17.  
//    23.  
//    25.  
// 
// Ranks of Sample-2=   
// 
//    2.   
//    4.   
//    5.   
//    7.   
//    12.  
//    15.  
//    19.  
//    20.  
//    24.  
// 
// Ranks of Sample-3=   
// 
//    1.   
//    8.   
//    9.   
//    10.  
//    18.  
//    21.  
//    22.  
//    26.  
//    27.  
// 
// The sum of the ranks of the sample-1   
// 
//    128.  
// 
// The sum of the ranks of the sample-2   
// 
//    108.  
// 
// The sum of the ranks of the sample-3   
// 
//    142.  
// 
// H~chi-square distribution with (K-1) degrees of freedom, where K is the total number of samples H=   
// 
//    1.0299824  
// 
// H~chi-square table value for 2 degrees of freedom and significance level of 0.05=   
// 
//    5.991  
// 
// Since the calculated value of H is < the table chi-square table, accept the null hypothesis   
// 