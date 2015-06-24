disp('Vectors u1 u2 and y are')
u1=[1;3;-2]
u2=[5;1;4]
y=[1;3;5]
disp(y,'y=',u2,'u2=',u1,'u1=')
disp('u1.u2=')
a=u1'*u2
disp(a,'=')
disp('Hence, {u1 u2} form an orthogonal basis.')
disp('Let W=span{u1 u2}')
disp('Therefore, projection of y on W is:')
disp('((y.u1)/(u1.u1))*u1+((y.u2)/(u2.u2))*u2')
a1=y'*u1
a2=u1'*u1
b1=y'*u2
b2=u2'*u2
disp((b1/b2)*u2,'+',(a1/a2)*u1,'=')