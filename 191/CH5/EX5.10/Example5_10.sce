//Illustration cubic spline interpolation with equal difference
//It needs Symbolic Toolbox
clc;
clear;
close();
x = -1:1;
fx = x^4;
y = fx;
function y = myfunction(x)
 y = x^4;
endfunction
diff_y = derivative(myfunction, x');
diff_y0 = diff_y(1);
diff_y2 = diff_y(9);
//cd ~/Desktop/maxima_symbolic
//exec symbolic.sce
syms a0 b0 c0 d0;
x = poly(0,'x');
s0x = a0+b0*x+c0*x^2+d0*x^3;
syms a1 b1 c1 d1;
s1x = a1+b1*x+c1*x^2+d1*x^3;
diff1_s0x = diff(s0x,x);
diff2_s0x = diff(diff1_s0x,x);
diff1_s1x = diff(s1x,x);
diff2_s1x = diff(diff1_s1x,x);
//from condition(ii)
x = -1;
eval(s0x,x);
//it gives equation a0-b0+c0-d0=1
x=1;
eval(s1x,x);
//it gives equation a1+b1+c1+d1=1
x = 0;
eval(s0x,x);
//it gives equation a0=0
eval(s1x,x);
//it gives equation a1=0
//from condition(iii)
x=0;
eval(diff1_s0x,x);
eval(diff1_s1x,x);
//it gives b0=b1;
//from condition(iv)
eval(diff2_s0x);
eval(diff2_s1x);
//it gives 2*c0=2*c1
//Applying boundary conditions
x=-1;
eval(diff1_s0x);
//it gives b0-2*c0+3*d0=-4
x=1;
eval(diff1_s1x);
//it gives b1+2*c1+3*d1=4
//Matrix form for the equations
A=[1 -1 1 -1 0 0 0 0;
1 0 0 0 0 0 0 0;
0 0 0 0 1 0 0 0;
0 0 0 0 1 1 1 1;
0 1 0 0 0 -1 0 0;
0 0 1 0 0 0 -1 0;
0 1 -2 3 0 0 0 0;
0 0 0 0 0 1 2 3];
C=[1 0 0 1 0 0 -4 4];
B = inv(A)*C';
//it implies
a0=0;b0=0;c0=-1;d0=-2;a1=0;b1=0;c1=-1;d1=2;
//for -1<=x<=0
x=poly(0,'x');
sx = eval(s0x);
disp(sx , 'for -1<=x<=0 sx =' );
//for 0<=x<=1
sx = eval(s1x);
disp(sx , 'for 0<=x<=1 sx =' );