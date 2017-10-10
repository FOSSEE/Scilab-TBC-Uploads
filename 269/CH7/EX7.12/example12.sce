Syms t,s
//on applying KVL we get the laplace transformed current as
disp(' the laplace transformed current equation is i(s)=s^2+6s+5/(s*(s^2+4s+5))')
//by partial fraction method
[A]=pfss(s^2+6*s+5/((s)*(s^2+4*s+5)))
b=ilt(A (1),s,t)
c=ilt(A(2),s,t)
d=b+c
disp('the time domain expression is')
disp(d)
