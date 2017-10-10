Syms t,s
disp('applyin kvl and solving we get')
disp('i(s)=1-e^-as/s(s+1) where a is a constant')
// This can be modified and written as
a=1
//by partial fraction
[A]=pfss((1*s^0+0)/s*(s+1))
b=ilt(A(1),s,t)
disp(b)
d=exp(1*a)//inverse laplace of exp(-sa)
disp(d)
//z=ilaplace((%e^-),s,t)
//disp(z)
e=ilt((1*s^0+0)/(s+1),s,t)
f=ilt((d*s^0)/s,s,t)
g=ilt((d*s^0)/(s+1))
h=b*d*e*g*f;
disp(h) 
