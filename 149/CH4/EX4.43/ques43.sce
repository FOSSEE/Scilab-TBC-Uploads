//ques43
syms a t
x=a*(t+sin(t));
y=a*(1-cos(t));
s2=diff(y,t,2)/diff(x,t,2);
s1=diff(y,t,1)/diff(x,t,1);

r=(1+s1^2)^(3/2)/s2;
disp('The radius of curvature is : ');
disp(r);

