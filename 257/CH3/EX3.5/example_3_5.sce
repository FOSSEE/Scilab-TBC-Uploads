syms s t

R=laplace(2,t,s)
C=laplace(%e^(-5*t),t,s)

TF=C/R

c=ilaplace(2/(s*(s+5)),s,t) // as C= TF * R

disp(c,"output is c(t)=")