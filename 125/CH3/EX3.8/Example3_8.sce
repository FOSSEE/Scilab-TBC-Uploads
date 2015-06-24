//Caption: 2-D Linear Convolution
//Example3.8
//page 113
clc;
x =[1,2,3;4,5,6;7,8,9];
h = [1;1;1];
y = conv2d2(x,h);
disp(y,'Linear 2D convolution result y =')
//Result
// Linear 2D convolution result y =   
//// 1.     2.     3.   
//    5.     7.     9.   
//    12.    15.    18.  
//    11.    13.    15.  
//    7.     8.     9. 
