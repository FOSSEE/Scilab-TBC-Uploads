clc
disp('for roles theorem F9x) should be differentiable in (a,b) and f(a)=f(b)');
disp(' Here f(x)=sin(x)/e^x');
disp('');
syms x
y=sin(x)/%e^x;

y1=diff(y,x);
disp(y1);
disp('putting this to zero we get tan(x)=1 ie x=pi/4');
disp('value pi/2 lies b/w 0 and pi. Hence roles theorem is verified');
