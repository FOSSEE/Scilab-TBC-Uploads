//ques48
disp('centre of curvature of given cycloid ');
syms a t
x=a*(t-sin(t));
y=a*(1-cos(t));
y1=diff(y,t,1);
y2=diff(y,t,2);
xx=x-y1*(1+y1)^2/y2;
yy=y+(1+y1^2)/y2;

disp('the coordinates x,y are resp :');
disp(xx);
disp(yy);
disp('which another parametric equation of cycloid ');
