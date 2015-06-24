//Caption: Auto-correlation
//Example10.4
//Page377
clear;
clc;
X = [20,30,50,60,80,90,100,120,140,160];//demand 
n = length(X); //number of years
//Auto-correlation coefficient r1 for One year lag data
[cov,Mean]=corr(X,2);
r1 = cov(2)/cov(1);
disp(r1,'Auto-correlation coefficient for one year lag data r1=')
//Auto-correlation coefficient r1 for Two year lag data
[cov,Mean]=corr(X,3);
r2 = cov(3)/cov(1);
disp(r2,'Auto-correlation coefficient for one year lag data r1=')
//Result
//Auto-correlation coefficient for one year lag data r1=   
// 
//    0.6818182  
// 
// Auto-correlation coefficient for one year lag data r1=   
// 
//    0.3766234  
