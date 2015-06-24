//Caption: Circular Convolution between two 2D matrices
//Example3.12
//page 122
clc;
x = [1,2;3,4];
h = [5,6;7,8];
X = fft2d(x); //2D FFT of x matrix
H = fft2d(h); //2D FFT of h matrix
Y = X.*H;  //Element by Element multiplication
y = ifft2d(Y); 
disp(y,'Circular Convolution Result y =')
//Result
//Circular Convolution Result y =   
// 
//    70.    68.  
//    62.    60.