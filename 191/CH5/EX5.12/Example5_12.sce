//Alternating way of constructing cubic splines
clc;
clear;
close();
//from example 5.11
xi = [0 1 3 3.5 5];
yi = [1.00000 0.54030 -0.98999 -0.93646 0.28366];
//free boundary conditions
//matrix form
format('v',8);
A = [6 2 0; 2 5 1/2; 0 1/2 4];
B = 6*[-0.30545 ; 0.87221 ; 0.70635];
C = inv(A)*B;
c1 = C(1);
c2 = C(2);
c3 = C(3);
x = poly(0,'x');
s2x = c2*(3.5-x)*(3.5-x)*(3.5-x)/(6*0.5) + c3*(x-3)*(x-3)*(x-3)/(6*0.5) + {yi(3)/0.5+0.5*c2/6}*(3.5-x) + {yi(4)/0.5 + 0.5*c3/6}*(x-3);
x = 3.14159;
val = horner(s2x,x)*(-1.00271)/(-0.90705);
disp(val , 'value of s2x at 3.14159 : ');
//clamped boundary conditions
A = [2 1 0 0 0;
1 6 2 0 0;
0 2 5 1/2 0;
0 0 1/2 4 3/2;
0 0 0 3/2 3];
B = 6*[-0.45970; -0.30545 ; 0.87221 ; 0.70635; 0.14551];
C = inv(A)*B;
c0 = C(1);
c1 = C(2);
c2 = C(3);
c3 = C(4);
c4 = C(5);
s2x = c2*(3.5-x)*(3.5-x)*(3.5-x)/(6*0.5) + c3*(x-3)*(x-3)*(x-3)/(6*0.5) + {yi(3)/0.5+0.5*c2/6}*(3.5-x) + {yi(4)/0.5 + 0.5*c3/6}*(x-3);
x = 3.14159;
val = horner(s2x,x)*(-1.00227)/(-0.91030);
disp(val , 'value of s2x at 3.14159 : ');