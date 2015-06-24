a=5;
I0=10^-6;
v_f = 1/(3-1);
vupperlim = 3;
vlowerlim = 1;
expecV = (vupperlim + vlowerlim)/2;
expec = integrate('(%e^(a*x))/2', 'x', 1,3);
expecI=I0*(expec -1);
disp(expecI)