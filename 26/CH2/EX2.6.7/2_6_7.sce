disp('the consumption matrix is:')
C=[0 .5;.6 .2];
disp(C)
disp('the demand for 1 unit of output sector 1')
d1=[1;0]
disp(d1)
disp('the production required to satisfy demand d1 is:')
x1=inv(eye(2,2)-C)*d1
disp(x1,'x1=')
disp('the final demand is:')
d2=[51;30]
disp(d2,'d2=')
disp('the production required to satisfy demand d2 is:')
x2=inv(eye(2,2)-C)*d2
disp(x2,'x2=')