//error
//ques1
disp('To find the fourier sine integral');
syms x t u
fs=2/%pi*integ(sin(u*x),u,0,%inf)*(integ(x^0*sin(u*t),t,0,%inf));
disp(fs);
