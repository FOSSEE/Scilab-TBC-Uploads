syms s t X
Y=(s+4)/(s^2+2*s+5)*X
y=ilaplace(Y,s,t)
disp(y,'kj')