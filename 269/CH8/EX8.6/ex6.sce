Syms t,s
disp('given i2(t)=5-3e^(-2t)')
f=laplace('5-3*%e^(-2*t)',t,s)
disp(f,"laplace transformed solution is")
x=s*f
disp('by final value theorem')
y=limit(x,s,0)//final value theorem
disp(y,"i2(inf)=")
