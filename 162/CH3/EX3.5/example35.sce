//Example 3.5
//Find the impulse responce and output of the system
clc;
syms jw t;
H=(jw+1)/((jw+2)*(jw+3));
h=ilaplace(H,jw,t);
disp(h,'IMPULSE RESPONCE=');
x=%e^(-2*t);
X=laplace(x,t,jw);
Y=H*X;
y=ilaplace(Y,jw,t);
disp(y,'OUTPTU OF THE SYSTEM IS=');
