//Caption: 2-D Linear Convolution
//Example3.7
//page 111
clc;
x =[1,2;3,4];
h = [5,6;7,8];
y = conv2d2(x,h);
disp(y,'Linear 2D convolution result y =')
//Result
// Linear 2D convolution result y =   
//Linear 2D convolution result y =   
// 
//    5.     16.    12.  
//    22.    60.    40.  
//    21.    52.    32