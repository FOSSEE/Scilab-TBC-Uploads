disp('Vectors y and u are:')
y=[2;3]
u=[4;-7]
disp(u,y)
disp('The orthogonal projection of y on u=((y.u)/(u.u))*u')
a=y'*u
b=u'*u
c=(a/b)*u
disp(c,'=')
disp('The component of y orthogonal to u is:')
disp(y-c)