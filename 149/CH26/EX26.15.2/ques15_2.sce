//ques15(ii)
syms n z
y=z^(-n);
f=symsum(y,n,0,%inf);
disp(f);
