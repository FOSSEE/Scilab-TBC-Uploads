Syms t,s
//by network equations 
disp('by network equations  i(s)=1/(s+1)^2+1')
[A]=pfss((1*s^0+0)/((s+1)^2+1))
b=ilt(A(1),s,t)
disp('The inverse laplace is')
disp(b)
