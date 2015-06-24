//Theoritical bound on error
//it needs Symbolic Toolbox
//cd ~\Desktop\maxima_symbolic;
//exec 'symbolic.sce'
clc;
clear;
close();
syms x;
fx = log(x);
n = 2;
x0 = 2;
x1 = 2.5;
x2 = 3;
diff1_fx = diff(fx,x);
diff2_fx = diff(diff1_fx,x);
diff3_fx = diff(diff2_fx,x);
//so fx satisfies the continuity conditions on [2,3]
x= poly(0,'x');
eta = linspace(2,3,100);
//fx-p2x is equal to
func = (x-2)*(x-2.5)*(x-3)*2/(factorial(3)*eta^3);
min_func = (x-2)*(x-2.5)*(x-3)*2/(factorial(3)*min(eta)^3);
disp(min_func , 'func will be less than or equal to');
x = 2.7;
max_error = abs(horner(min_func,x));
disp(max_error , 'Error does not exceed :');