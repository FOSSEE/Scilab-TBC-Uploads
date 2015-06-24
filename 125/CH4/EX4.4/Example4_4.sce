//Caption: 2D DFT of 4x4 grayscale image
//Example4.4
//page 170
clc;
f = [1,1,1,1;1,1,1,1;1,1,1,1;1,1,1,1];
N =4; //4-point DFT
kernel = dft_mtx(N);
F = kernel*(f*kernel');
disp(F,'2D DFT of given 2D image =')
//Result
//2D DFT of given 2D image =   
// 
//    16.    0    0    0  
//    0      0    0    0  
//    0      0    0    0  
//    0      0    0    0  