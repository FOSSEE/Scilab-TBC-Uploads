clc
disp('total frequency= integrate (f,x,0,2 )=')
n=integrate ('x^3','x',0,1)+integrate ('(2-x)^3','x',1,2)
disp('u1 about origin=')
u1=(1/n)*(integrate ('(x)*(x^3)','x',0,1)+integrate ('(x)*((2-x)^3)','x',1,2))
disp('u2 about origin=')
u2=(1/n)*(integrate ('(x^2)*(x^3)','x',0,1)+integrate('(x^2)*((2-x)^3)','x',1,2))
disp('standard deviation=(u2-u1^2)^0.5=')
(u2-u1^2)^0.5
disp('mean deviation about the mean=(1/n)*(integrate (|x-1|*(x^3),x,0,1)+integrate(|x-1|*((2-x)^3),x,1,2`)')
(1/n)*(integrate ('(1-x)*(x^3)','x',0,1)+integrate('(x-1)*((2-x)^3)','x',1,2))