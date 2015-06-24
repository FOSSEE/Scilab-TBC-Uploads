// determine the error
clc;
w=6;
wn=4;
u=w/wn;
eta=0.66;
M=1/{[(1-u^2)^2]+(2*eta*u)^2}^0.5;
Error=(M-1)*100;
disp(Error,'error (%)=')