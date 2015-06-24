//Example 6.7 
//Program to Compute the 4􀀀p o i n t DFT o f a Sequenc e x[ n ]=[ 0 , 1 , 2 , 3 ]
// u s i n g DIT􀀀DIF Algor i thm .
clc ;
x = [0 ,1 ,2 ,3];
//FFT Computation
X = fft (x , -1);
disp (X, 'X( z ) = ' );
