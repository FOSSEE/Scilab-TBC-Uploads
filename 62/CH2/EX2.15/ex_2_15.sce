syms s T t
y=integ(exp(-(t-T))*exp(s*T),T,-%inf,t)
x=exp(s*t)
lamda=y/x//eigen value
disp(lamda,"b)  lamda=")
lamda_=laplace(exp(-t))
disp(lamda_,"c)  lamda=")