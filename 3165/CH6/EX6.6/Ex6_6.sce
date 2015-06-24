//Example 6-6
//Program to Compute the IDFT o f a Sequenc e u s i n g DIT Algor i thm .
//X[ k ] = [7 ,􀀀0.707􀀀 j 0 .707 , 􀀀 j ,0.707 􀀀 j 0 . 7 0 7 , 1 , 0 . 7 0 7+ j 0. 7 0 7 , j ,􀀀0.707+ j 0 . 7 0 7 ]
clc ;
j= sqrt ( -1);
X = [7 , -0.707 -j*0.707 , -j ,0.707 - j *0.707 ,1 ,0.707+ j*0.707 ,j , -0.707+ j *0.707];
// I n v e r s e FFT Computation
x = fft (X , 1);
disp (x, ' x ( n ) = ' );
