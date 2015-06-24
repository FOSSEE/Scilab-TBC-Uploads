//Caption: Program to compute discrete cosine tranform
//Example4.10
//page 198
clc;
N =4; //DCT matrix of order four
X = dct_mtx(N);
disp(X,'DCT matrix of order four')
//Result
//DCT matrix of order four   
// 
//    0.5          0.5          0.5          0.5        
//    0.6532815    0.2705981  - 0.2705981  - 0.6532815  
//    0.5        - 0.5        - 0.5          0.5        
//    0.2705981  - 0.6532815    0.6532815  - 0.2705981  