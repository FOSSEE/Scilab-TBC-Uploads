disp('Given vectors are:')
u1=[0;1;-4;-1]
u2=[3;5;1;1]
u3=[1;0;1;-4]
u4=[5;-3;-1;1]
x=[10;-8;2;0]
disp(x,'x=',u4,'u4=',u3,'u3=',u2,'u2=',u1,'u1=')
disp('The vector in span{u4}=((x.u4)/(u4.u4))*u4')
a1=x'*u4
a2=u4'*u4
disp((a1/a2)*u4)
disp('Therefore, the vector in span{u1 u2 u3}=x-2*u4')
disp(x-2*u4)