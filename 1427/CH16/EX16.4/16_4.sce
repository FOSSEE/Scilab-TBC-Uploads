//ques-16.4
//Determining rate law and order with respect to A and B
clc
//R=k*[A]^x*[B]^y
//2R=k*[A]^x*[2*B]^y
//8*R=k*[2*A]^x*[2*B]^y
x=log10(4)/log10(2);
y=log10(2)/log10(2);
printf("Order with respect to A is %d and B is %d and rate law is k*[A]^2*[B].",x,y);
