//Caption: 2D DFT of 4x4 grayscale image
//Example4.5
//page 171
clc;
F = [16,0,0,0;0,0,0,0;0,0,0,0;0,0,0,0];
N =4; //4-point DFT
kernel = dft_mtx(N);
f = (kernel*(F*kernel'))/(N^2);
f = real(f);
disp(f,'Inverse 2D DFT of the transformed image f =')
//Result
//Inverse 2D DFT of the transformed image f =   
// 
//    1.    1.    1.    1.  
//    1.    1.    1.    1.  
//    1.    1.    1.    1.  
//    1.    1.    1.    1.  