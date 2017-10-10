Syms t,s
disp('by network equations kvl and kcl ')
disp('i2(s)=1000/s*(s^2+40s+300)')
[A]=pfss((1000*s^0+0)/((s*(s+10)*(s+30))))
x=ilt(A(1),s,t)
y=ilt(A(2),s,t)
z=ilt(A(3),s,t)
f=x+y+z
disp('the timedomain expression is')
disp(f)
