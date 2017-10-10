//Example 1.14<a>
//check the given signL is PERIODIC OR NOT//
clc ;
t=-10:.01:10;
x=%i*(exp(%i*10*t));
subplot (311)
plot (t,x);
disp ('(a) this shows that the given signal is periodic with period (.2*%pi)');
