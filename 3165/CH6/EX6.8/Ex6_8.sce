//Example 6. 8
//Program to Compute the DFT o f a Sequenc e x [ n]=[ 1 , 1 , 0 , 0 ]
// and IDFT o f a Sequenc e Y[ k ]=[ 1 , 0 , 1 , 0 ]
clc ;
x = [1 ,1 ,0 ,0];
//DFT Computation
X = fft (x , -1);
Y = [1 ,0 ,1 ,0];
//IDFT Computation
y = fft (Y , 1);
// Di s pl a y s e quenc e X[ k ] and y [ n ] i n command window
disp (X,"X[ k]=");
disp (y,"y [ n]=");
