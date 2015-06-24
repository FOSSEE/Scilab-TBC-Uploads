//qus47
disp('The centre of curvature');
syms x a y
y=2*(a*x)^0.5;
y1=diff(y,x,1);
y2=diff(y,x,2);
xx=x-y1*(1+y1)^2/y2;
yy=y+(1+y1^2)/y2;
disp('the coordinates x,y are resp :');

disp(xx);
disp(yy);


