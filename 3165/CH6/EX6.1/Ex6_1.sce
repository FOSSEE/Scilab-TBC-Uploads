//Example 6.1
//Program to Compute the 8􀀀p o i n t DFT o f the Sequenc e x [ n ]=[ 1 , 1 , 1 , 1 , 1 , 1 , 0 , 0 ]
clc ;
x = [1 ,1 ,1 ,1 ,1 ,1 ,0 ,0];
//DFT Computation
X = fft (x , -1);
// Di s pl a y s e quenc e X[ k ] i n command window
disp (X,"X[ k]=");
