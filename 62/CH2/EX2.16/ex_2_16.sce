syms s t T tou
y=T^-1*integ(exp(s*tou),tou,t-T/2,t+T/2)
x=exp(s*t)
lamda=y/x
disp(lamda,"lamda=")