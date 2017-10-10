//Example 1.31<d>
//check the given signL is PERIODIC OR NOT e^(-2*t)*u(t)
clc ;
t=-1:.01:1;
x=exp(-2*t);
plot (t,x);
disp ('(a)this shows that the given signal is not periodic which gives w0=1+j,complex no. the frequency of signal can never be complex it must have real value');
