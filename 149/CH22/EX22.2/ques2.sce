//error
//ques2
disp('To find the fourier transform of given function ');
syms x  s
F=integ(exp(%i*s*x),x,-1,1);
disp(F);
//produces error->
F1=integ(sin(x)/x,x,0,%inf);
