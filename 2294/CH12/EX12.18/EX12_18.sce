//Example 12.18
//Find the mean and variance,if they exist.
Xo=0;X1=1
X=integrate('X*(X^3/12)','X',Xo,X1)
disp(X,'E[X]=')
Xo=0;X1=1
X2=integrate('X^2*(X^3/12)','X',Xo,X1)
disp(X2,'E[X^2]=')
disp(X2-X^2,'Variance =E[X^2]-E[X]^2=')
x=1:1:5;
y=sum(x^2)/15;
disp(y,'E[X]=sum(x*f(x))=sum(x^2)/15')
y1=sum(x^3)/15;
disp(y1,'E[X]=sum(x^2*f(x))=sum(x^3)/15')
disp(y1-y^2,'Variance =E[X^2]-E[X]^2=')
