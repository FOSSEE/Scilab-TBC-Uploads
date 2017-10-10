//Example 1.15<a>
// Find wheather the following signal is periodic or not x3(n)=2*e^(%i*(t+%pi/4))
clc;
t=-21:21;
x=2*exp(%i*(t+%pi/4));
f=1/(2*%pi);
N=1/f;
disp('samples',N,'(b)the given signal is not periodic');
