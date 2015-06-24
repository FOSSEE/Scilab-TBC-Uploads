//Example 6 . 10
//Program to Compute the 8􀀀p o i n t DFT o f g i v e n Sequenc e
// x [ n ]=[ 2 , 2 , 2 , 2 , 1 , 1 , 1 , 1 ] u s i n g DIT , r adix 􀀀2 ,FFT Algor i thm .
clc ;
x = [2 ,2 ,2 ,2 ,1 ,1 ,1 ,1];
//FFT Computation
X = fft (x , -1);
disp (X, 'X( z ) = ' );
