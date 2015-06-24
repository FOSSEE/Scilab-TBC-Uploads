//Caption: linear cross correlation of a 2D matrix
//Example3.18
//page 141
clc;
x = [1,1;1,1];
h1 = [1,2;3,4];
h2 = h1(:,$:-1:1);
h = h2($:-1:1,:);
y = conv2d(x,h)
disp(y,'Linear cross Correlation result y=')
//Result
//Linear cross Correlation result y=   
// 
//    4.    7.    3.  
//    6.   10.    4.  
//    2.    3.    1.  