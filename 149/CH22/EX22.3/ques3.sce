//error
//ques3
disp('To find the fourier transform of given function ');
syms x  s
F=integ(exp(%i*s*x)*(1-x^2),x,-1,1);
disp(F);
//produces error->
F1=integ((x*cos(x)-sin(x))/x^3*cos(x/2),x,0,%inf);
