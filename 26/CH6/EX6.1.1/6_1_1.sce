disp('Vectors u an v are:')
u=[-1;2]
v=[4;6]
disp(v,u)
disp('Projection of v on u=(u.v)/(v.v)')
a=u'*v
b=u'*u
p=a/b
disp(p,'=')