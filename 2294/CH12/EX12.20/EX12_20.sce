Xo=0;X1=1
X=integrate('X*(X+0.5)','X',Xo,X1)
disp(X,'E[X]=')
Yo=0;Y1=1
Y=integrate('Y*(Y+0.5)','Y',Yo,Y1)
disp(Y,'E[Y]=')
x=[0,0;1,1;1,0]
y=[0,0;1,1;0,1]
deff('z=f(x,y)','z=x*y*(x+y)')
I=int2d(x,y,f)
disp(I,'E[XY]=')
disp(I-X*Y,'cov(X,Y)=E[XY]-E[X]E[Y]=');
cov=I-X*Y
Xo=0;X1=1
X2=integrate('X^2*(X+0.5)','X',Xo,X1)
disp(X2,'E[X^2]=')
Yo=0;Y1=1
Y2=integrate('Y^2*(Y+0.5)','Y',Yo,Y1)
disp(Y2,'E[Y^2]=')
disp(X2-X^2,'Variance of X=E[X^2]-E[X]^2)=')
v1=X2-X^2
disp(Y2-Y^2,'Variance of Y=E[Y^2]-E[Y]^2)=')
v2=Y2-Y^2
disp(cov/sqrt(v1*v2),'Correlation coefficient of X and Y=cov(X,Y)/(s.d of X*s.d of Y)=')
