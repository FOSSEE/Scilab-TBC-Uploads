//Example 6.2
//Program to Compute the IDFT o f the Sequenc e X[ k]=[5 ,0 ,1 􀀀 j , 0 , 1 , 0 , 1+ j , 0 ]
clc ;
j= sqrt ( -1);
X = [5 ,0 ,1 -j ,0 ,1 ,0 ,1+j ,0]
//IDFT Computation
x = fft (X , -1);
// Di s pl a y s e q u e n c e s x [ n ] i n command window
disp (x,"x [ n]=");
