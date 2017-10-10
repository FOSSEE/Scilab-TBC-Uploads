// using KVL we get i(t)*R + 1/C * int(i(t)) = v(t)

// taking laplace transform V(s)= I(s)*R + 1/C * (I(s)/s)

R=10^6
C=10^-6

s=%s;

F=1/R*(1/(s + (1)/(R*C)));
disp(F)

syms t s;
y=ilaplace(F,s,t);
disp(y,"i(t)=")