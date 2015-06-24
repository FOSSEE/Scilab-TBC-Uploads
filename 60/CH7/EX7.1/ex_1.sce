//I=integral(exp^(-x^2) dx)

deff('y=f(x)','y=exp(-(x^2))')
a=0,b=1
c=(a+b)/2
deff('y=g(x)','y=-2*x*exp(-(x^2))')
f(a)
f(b)
f(c)
g(a)
g(b)
g(c)
R=(b-a)*f(a)
M=(b-a)*f(c)
T=(b-a)*[f(a)+f(b)]/2
S=(b-a)*{f(a)+4*f(c)+f(b)}/6
CT=[(b-a)/2]*[f(a)+f(b)]+[(b-a^2)/12]*[g(a)-g(b)]
