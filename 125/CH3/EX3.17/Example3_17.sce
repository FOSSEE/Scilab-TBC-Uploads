//Caption: linear auto correlation of a 2D matrix
//Example3.17
//page 136
clc;
x1 = [1,1;1,1];
x2 = x1(:,$:-1:1);
x2 = x2($:-1:1,:);
x = conv2d(x1,x2)
disp(x,'Linear auto Correlation result x=')
//Result
//Linear auto Correlation result x=   
// 
//    1.    2.    1.  
//    2.    4.    2.  
//    1.    2.    1. 