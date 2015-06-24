//Caption: Chi-Square Test for Checking Independence of categorized data
//Example8.35
//Page294
//Ho: pij = pi.pj; H1: pij>pi.pj
//ROR_LOT: Rate of return versus level of technology used
clear;
clc;
ROR_LOT =[20,50,30,10;50,70,75,35;10,20,70,60]';
disp('Level of technology used=')
disp('Low   Medium   High')
disp('___________________________')
disp(ROR_LOT)
disp('___________________________')
[m,n]= size(ROR_LOT);
for j = 1:n
        oj(j)= sum(ROR_LOT(:,j));
end
oj = oj';
disp(oj,'Column total =')
for i = 1:m
    oi(i) = sum(ROR_LOT(i,:));
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
       chi(i,j) = ((ROR_LOT(i,j)-eij(i,j))^2)/eij(i,j);
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
//Level of technology used=   
// 
// Low   Medium   High   
// 
// ___________________________   
// 
//    20.    50.    10.  
//    50.    70.    20.  
//    30.    75.    70.  
//    10.    35.    60.  
// 
// ___________________________   
// 
// Column total =   
// 
//    110.    230.    160.  
// 
// Row total =   
// 
//    80.   
//    140.  
//    175.  
//    105.  
// 
// Total number of observations in the entire table=   
// 
//    500.  
// 
// The expected frequencies for different combinations of rows and columns   
// 
//    17.6    36.8    25.6  
//    30.8    64.4    44.8  
//    38.5    80.5    56.   
//    23.1    48.3    33.6  
// 
// The calculated chi-square statistic =   
// 
//    78.339245  
// 
// The chi-square statistic form table chi-square value=   
// 
//    12.592  
// 
// It falls in the Rejection Region   
// 
// Then Null Hypothesis Ho should be Rejected   
// 