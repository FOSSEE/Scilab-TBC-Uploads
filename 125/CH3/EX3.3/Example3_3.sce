//Caption: 2-D Linear Convolution
//Example3.3 & Example3.6 & Example3.10
//page 100 & page 109 & page 119
clc;
x =[1,2,3;4,5,6;7,8,9];
h = [3,4,5];
y = conv2d2(x,h);
disp(y,'Linear 2D convolution result y =')
//Result
//Linear 2D convolution result y =   
// 
//    3.     10.    22.    22.    15.  
//    12.    31.    58.    49.    30.  
//    21.    52.    94.    76.    45.