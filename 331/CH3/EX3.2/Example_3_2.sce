//Caption: Arithmetic Mean of grouped Data
//Example 3.2
//Page 40
clear;
clc;
x = input('Mothly Salary Range =');
f = input('Number of Employees =');
[m,n]=size(x);
for i = 1:m
  x_mid(i) = sum(x(i,:))/2;
  fx(i) = f(i)*x_mid(i);
end
n = sum(f);//total number of employeess
sigma_fx = sum(fx); //
X = sigma_fx/n;
f = f';
disp('________________________________________________________')
disp(x,'x=')
disp(x_mid,'Mid-point of class interval xi = ')
disp(f,'Frequency =')
disp(fx,'fi x x mid value=')
disp('________________________________________________________')
disp(n,'Total number of employees n =')
disp(X,'Arithmetic Mean of monthly salaries X =')
//Result
 
//Mothly Salary Range =[8000,12000;12000,16000;16000,20000;20000,24000;24000,28000;28000,32000;32000,36000;36000,40000]
//Number of Employees = [400,350,325,250,200,150,75,25]
// 
// ________________________________________________________   
// 
// x=   
// 
//    8000.     12000.  
//    12000.    16000.  
//    16000.    20000.  
//    20000.    24000.  
//    24000.    28000.  
//    28000.    32000.  
//    32000.    36000.  
//    36000.    40000.  
// 
// Mid-point of class interval xi =    
// 
//    10000.  
//    14000.  
//    18000.  
//    22000.  
//    26000.  
//    30000.  
//    34000.  
//    38000.  
// 
// Frequency =   
// 
//    400.  
//    350.  
//    325.  
//    250.  
//    200.  
//    150.  
//    75.   
//    25.   
// 
// fi x x mid value=   
// 
//    4000000.  
//    4900000.  
//    5850000.  
//    5500000.  
//    5200000.  
//    4500000.  
//    2550000.  
//    950000.   
// 
// ________________________________________________________   
// 
// Total number of employees n =   
// 
//    1775.  
// 
// Arithmetic Mean of monthly salaries X =   
// 
//    18845.07  