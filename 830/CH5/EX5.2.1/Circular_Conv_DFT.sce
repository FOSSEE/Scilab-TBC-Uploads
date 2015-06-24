//Graphical//
//Example 5.2.1 and Example 5.2.2
//Performing Circular COnvolution
//Using DFT
clear;
clc;
close;
L = 4; //Length of the Sequence
N = 4;  // N -point DFT
x1 = [2,1,2,1];
x2 = [1,2,3,4];
//Computing DFT 
X1 = dft(x1,-1)
X2 = dft(x2,-1)
//Multiplication of 2 DFTs
X3 = X1.*X2
//Circular Convolution Result
x3 =abs(dft(X3,1))
