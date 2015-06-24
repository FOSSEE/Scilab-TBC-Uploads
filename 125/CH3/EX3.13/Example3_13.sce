//Caption: Circular Convolution expressed as linear convolution plus alias
//Example3.13
//page 123
clc;
x = [1,2;3,4];
h = [5,6;7,8];
y = conv2d(x,h);
y1 = [y(:,1)+y(:,$),y(:,2)];
y2 = [y1(1,:)+y1($,:);y1(2,:)]
disp(y,'Linear Convolution result y=')
disp(y2,'circular convolution expessed as linear convolution plus alias =')
//Result
// Linear Convolution result y=   
// 
//    5.     16.    12.  
//    22.    60.    40.  
//    21.    52.    32.  
// 
// circular convolution expessed as linear convolution plus alias =   
// 
//    70.    68.  
//    62.    60.  
// 