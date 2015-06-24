//Example 12.16
//Find the following.
Xo=0;X1=1
X=integrate('2*X*((1-X)^2)','X',Xo,X1)
disp(X,'E[X]=')
Xo=0;X1=1
X2=integrate('2*X^2*((1-X)^2)','X',Xo,X1)
disp(X2,'E[X^2]=')
disp(6*X+3*(X2),'E[6X+3X^2]=6E[X]+3E[X^2]=')
disp(2*X+3,'E[2*X+3]=2E[X]+3=')
x1=2*X+3
disp(4*X2+9+12*X,'E[(2*X+3)^2]=E[4*X^2+9+12*X]=')
x2=4*X2+9+12*X
disp(x2-x1^2,'Variance of (2*X+3)=E[(2*x+3)^2]-{E[2*X+3]}^2=')

