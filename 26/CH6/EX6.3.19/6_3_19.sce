disp('By orthogonal decomposition theorem,')
disp('u3 is the sum of a vector in W=span{u1 u2} and a vector v orthogonal to W')
disp('To find v, given u1 and u2')
u1=[1;1;-2]
u2=[5;-1;2]
disp(u2,'u2=',u1,'u1=')
disp('Projection of u3 on W')
disp('= (-1/3)*u1+(1/15)*u2')
disp((-1/3)*u1+(1/15)*u2,'=')
disp('v= u3-(projection of u3 on W)')
disp((-1/3)*u1+(1/15)*u2,'-',[0;0;1],'=')
disp([0;0;1]-((-1/3)*u1+(1/15)*u2),'=')