//ques15
clc
disp('Runga kutta method');

function yy=f(x,y)
  yy=x*y+y^2;
endfunction
y0=1;
x=0;
y=1;
h=0.1;
k1=h*f(x,y);
k2=h*f(x+1/2*h,y+1/2*k1);
k3=h*f(x+1/2*h,y+1/2*k2);
k4=h*f(x+h,y+k3);
ka=1/6*(k1+2*k2+2*k3+k4);
disp('the required approximate value is :-');
y1=y+ka;
y=y+ka;
disp(y);
//x=0.1;
//y1=float(eval(y));

disp('to find y(0.4) put x=0.2 y=above value ie 1.196 h=0.2 ');
x=0.1;
h=0.1;
k1=h*f(x,y);
k2=h*f(x+1/2*h,y+1/2*k1);
k3=h*f(x+1/2*h,y+1/2*k2);
k4=h*f(x+h,y+k3);
kb=1/6*(k1+2*k2+2*k3+k4);
disp('the required approximate value is :-');
y2=y+kb;
y=y+kb;
disp(y);
//x=0.2;
//y2=float(eval(y));

disp('to find y(0.4) put x=0.2 y=above value ie 1.196 h=0.2 ');
x=0.2;
h=0.1;
k1=h*f(x,y);
k2=h*f(x+1/2*h,y+1/2*k1);
k3=h*f(x+1/2*h,y+1/2*k2);
k4=h*f(x+h,y+k3);
kc=1/6*(k1+2*k2+2*k3+k4);
disp('the required approximate value is :-');
y3=y+kc;
y=y+kc;
disp(y);
//x=0.3;
//y3=float(eval(y));
f0=f(0,y0);
f1=f(0.1,y1);
f2=f(0.2,y2);
f3=f(0.3,y3);
disp('y0 y1 y2 y3 are respectively : ');
disp(y3,y2,y1,y0);
disp('f0 f1 f2 f3 are respectively : ');
disp(f3 ,f2, f1 ,f0 );
disp('finding y4 using predictors milne method x=0.4');
h=0.1;
y4=y0+4*h/3*(2*f1-f2+2*f3);
disp('y4=');
disp(y4);
disp('f4=');
f4=f(0.4,y4);

disp('using corrector method :');
y4=y2+h/3*(f2+4*f3+f4);
disp('y4=');
disp(y4);
disp('f4=');
f4=f(0.4,y4);
disp(f4);
