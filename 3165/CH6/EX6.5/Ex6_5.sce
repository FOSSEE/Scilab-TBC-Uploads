//Example 6.5
//Program to f i n d the DFT o f a Sequenc e x [ n]=[ 1 , 2 , 3 , 4 , 4 , 3 , 2 , 1 ]
// u s i n g DIF Algor i thm .
clc ;
x = [1 ,2 ,3 ,4 ,4 ,3 ,2 ,1];
//FFT Computation
X = fft (x , -1);
disp (X, 'X( z ) = ' );
