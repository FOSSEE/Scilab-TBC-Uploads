//clear//
//Caption:Convolutional Encoding - Time domain approach
//Example8.7:Convolutional Code Generation
//Time Domain Approach
close;
clc;
g1 = input('Enter the input Top Adder Sequence:=')
g2 = input('Enter the input Bottom Adder Sequence:=')
m = input('Enter the message sequence:=')
x1 = round(convol(g1,m));
x2 = round(convol(g2,m));
x1 = modulo(x1,2);
x2 = modulo(x2,2);
N = length(x1);
for i =1:length(x1)
  x(i,:) =[x1(N-i+1),x2(N-i+1)];
end
x = string(x)
disp(x)
//Result
//Enter the input Top Adder Sequence:=[1,1,1]
//Enter the input Bottom Adder Sequence:=[1,0,1]
//Enter the message sequence:=[1,1,0,0,1]
//x =
//!1  1  !
//!      !
//!1  0  !
//!      !
//!1  1  !
//!      !
//!1  1  !
//!      !
//!0  1  !
//!      !
//!0  1  !
//!      !
//!1  1  !
