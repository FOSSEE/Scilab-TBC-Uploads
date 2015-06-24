//ques46
disp('radius of curvature');
syms a t
r=a*(1-cos(t));
r1=diff(r,t,1);
l=(r^2+r1^2)^(3/2)/(r^2+2*r1^2-r*r1);
syms r;
t=acos(1-r/a);
l=eval(l);
disp(l);
disp('Which is proportional to r^0.5');
