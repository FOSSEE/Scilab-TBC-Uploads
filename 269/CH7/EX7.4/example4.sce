Syms s t
disp('given')
disp('i(s)=V/R/s+(1/RC) for t>=0')
z=ilt('(V/R*s^0+0)/(s+(1/RC))',s,t)
disp(z,"z(t)=")
