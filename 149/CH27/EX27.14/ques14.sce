//ques14
clc
syms x
yo=0;
y=0;
h=0.2;
f=x-y^2;
y=integ(f,x,0,x);
y1=eval(yo+y);
disp('y1=');
disp(float(y1));
f=x-y^2;
y=integ(f,x,0,x);
y2=yo+y;
disp('y2=');
disp(float(y2));
//function y=f(x,y)
  y=x-y^2;
//endfunction

y=integ(f,x,0,x);
y3=yo+y;
disp('y3=');
disp(float(y3));
disp('determining the initial values for milnes method using y3 ');
disp('x=0.0  y0=0.0  f0=0');
disp('x=0.2  y1=');
x=0.2;
disp(eval(y1));
y1=eval(y1);
disp('f1=');
f1=float(eval(x-y1^2));
disp(f1);
disp('x=0.4  y2=');
x=0.4;
disp(float(eval(y2)));
disp('f2=');
f2=float(eval(x-y2^2));
disp(f2);

disp('x=0.6  y3=');
x=0.6;
disp(eval(y3));
disp('f3=');
f3=float(eval(x-y3^2));
disp(f3);
//---------------------------------------------
disp('Using predictor method to find y4');
x=0.8;
y4=eval(yo+4/3*h*(2*f1-f2+2*f3));
disp('y4=');
disp(float(y4));
f4=float(eval(x-y^2));
disp('f4=');
disp(f4);
disp('Using predictor method to find y5');
x=1.0;
y5=eval(y1+4/3*h*(2*f2-f3+2*f4));
disp(float(y5));
f5=float(eval(x-y^2));
disp('f5=');
disp(f5);
disp('Hence y(1)=');
disp(float(y5));