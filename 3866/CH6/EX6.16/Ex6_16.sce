clc; clear; close;

Cin=1;
a=8;
b=64;
LEinv=1;
//solving without sideload 'a'
SE=(LEinv*b/Cin)^(1/3);
y=LEinv*b/SE;
mprintf('WITHOUT SIDELOAD');
disp(y,'Y=');
x=LEinv*y/SE;
disp(x,'X=');
w=LEinv*x/SE;
disp(w,'W=');
//adding sideload by removing gates beyond sideload
sideload_c=y+a;
SE1=(LEinv*sideload_c/Cin)^(1/2);
X=round(LEinv*sideload_c/SE1);
mprintf('\n WITH SIDELOAD');
disp(y,'Y=');
disp(X,'X=');
disp(w,'W=');
