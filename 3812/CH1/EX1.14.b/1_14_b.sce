//Example 1.14<b>
//check the given signL is PERIODIC OR NOT e^(-1+j)*t
clc ;
t=-1:.01:1;
x=(exp(-1+%i)*t);
f=1/2*%pi;
N=1/f;
disp (N,'this shows that the given signal is not periodic');
