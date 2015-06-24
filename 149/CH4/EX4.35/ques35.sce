//ques35
disp("The two given curves are x^=4y and y^2=4x which intersects at (0,0) and (4,4)');
disp('for (4,4)');
x=4;
syms x
y1=x^2/4;
y2=2*x^(1/2);
m1=diff(y1,x,1);
m2=diff(y2,x,1);
x=4;
m1=eval(m1);
m2=eval(m2);

disp('Angle between them is(radians) :-');
t=atan((m1-m2)/(1+m1*m2));
disp(t);

