//Caption: Chi-Square Test for Checking Independence of categorized data
//Example8.36
//Page296
//Ho: pij = pi.pj; H1: pij>pi.pj
//S_NOYE: Present monthly salary versus number of years of experience
clear;
clc;
S_NOYE =[40,30,30,35;35,20,30,40;30,35,40,35]';
disp('Number of years of experience,n')
disp('n<2   2<=n<=5   5<=n')
disp('___________________________')
disp(S_NOYE)
disp('___________________________')
[m,n]= size(S_NOYE);
for j = 1:n
        oj(j)= sum(S_NOYE(:,j));
end
oj = oj';
disp(oj,'Column total =')
for i = 1:m
    oi(i) = sum(S_NOYE(i,:));
end
disp(oi,'Row total =')
oij = sum(oj);
disp(oij,'Total number of observations in the entire table=')
for i = 1:m
    for j = 1:n
       eij(i,j) = (oi(i)*oj(j))/oij
    end
end
disp(eij,'The expected frequencies for different combinations of rows and columns')
for i = 1:m
    for j = 1:n
       chi(i,j) = ((S_NOYE(i,j)-eij(i,j))^2)/eij(i,j);
    end
end 
tot_chi = sum(chi(:,:));
disp(tot_chi,'The calculated chi-square statistic =')
alpha = 0.05;
chi_stand = 12.592//chi-square statistic form table chi-square value
disp(chi_stand,'The chi-square statistic form table chi-square value=')
if (tot_chi>chi_stand) then
    disp('It falls in the Rejection Region')
    disp('Then Null Hypothesis Ho should be Rejected')
else
    disp('It falls in the Acceptance Region')
    disp('Then Null Hypothesis Ho should be Accepted')
end
//Result
//Number of years of experience,n   
// 
// n<2   2<=n<=5   5<=n   
// 
// ___________________________   
// 
//    40.    35.    30.  
//    30.    20.    35.  
//    30.    30.    40.  
//    35.    40.    35.  
// 
// ___________________________   
// 
// Column total =   
// 
//    135.    125.    140.  
// 
// Row total =   
// 
//    105.  
//    85.   
//    100.  
//    110.  
// 
// Total number of observations in the entire table=   
// 
//    400.  
// 
// The expected frequencies for different combinations of rows and columns   
// 
//    35.4375    32.8125    36.75  
//    28.6875    26.5625    29.75  
//    33.75      31.25      35.    
//    37.125     34.375     38.5   
// 
// The calculated chi-square statistic =   
// 
//    7.1221059  
// 
// The chi-square statistic form table chi-square value=   
// 
//    12.592  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted  