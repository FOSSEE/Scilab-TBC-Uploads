//Caption: Program to find the singular value decomposition of given matrix
//Example4.13
//page 210
clear;
clc;
A = [1,-2,3;3,2,-1];
[U,S,V]= svd(A);
A_recon = U*S*V';
disp(U,'U =')
disp(S,'S =')
disp(V,'V =')
disp(A_recon,'A matrix from svd =')
//Result
// U =   
// 
//  - 0.7071068    0.7071068  
//    0.7071068    0.7071068  
// 
// S =   
// 
//    4.2426407    0.           0.  
//    0.           3.1622777    0.  
// 
// V =   
// 
//    0.3333333    0.8944272  - 0.2981424  
//    0.6666667  - 2.776D-16    0.7453560  
//  - 0.6666667    0.4472136    0.5962848  
// 
// A matrix from svd =   
// 
//    1.  - 2.    3.  
//    3.    2.  - 1. 