//Caption: Mode of ungrouped data
//Example3.9
//Page47
clear;
clc;
X = input('Number of Defects =');
f = input('Number of samples =');
[Mode,i]= max(f);
disp(X(i),'The mode of No. of Defects =');
disp(f(i),'because it has maximum frequency of =')
//Result
//Number of Defects =[5,8,9,10,12,15,17]
//Number of samples =[1,1,2,1,3,1,1]
// 
// The mode of No. of Defects =   
// 
//    12.  
// 
// because it has maximum frequency of =   
// 
//    3.  