syms t s a
x=ilaplace((s+a)^-2)
disp(x*'u(t)',"x(t)=")