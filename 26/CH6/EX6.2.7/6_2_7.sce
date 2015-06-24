disp('vectors u1 u2 and x are:')
u1=[2;-3]
u2=[6;4]
x=[9;-7]
disp(x,u2,u1)
disp('u1.u2=')
disp(u1'*u2)
disp('u1.u2=0, {u1 u2} is an orthogonal set')
disp('Hence {u1 u2} forms a basis of R2')
disp('x can be written as: x=a*u1+b*u2')
disp('where a=(x.u1)/(u1.u1)')
a1=x'*u1
a2=u1'*u1
a=a1/a2
disp(a,'=')
disp('and b=(x.u2)/(u2.u2)')
b1=x'*u2
b2=u2'*u2
b=b1/b2
disp(b,'=')