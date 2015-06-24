//Caption: Linear COnvolution of any signal with an impulse signal gives
//rise to the same signal
//Example3.11
//page 121
clc; 
x =[1,2;3,4];
h = 1;
y = conv2d2(x,h);
disp(y,'Linear 2D convolution result y =')
//Result
//Linear 2D convolution result y =   
//// Linear 2D convolution result y =   
// 
//    1.    2.  
//    3.    4. 
