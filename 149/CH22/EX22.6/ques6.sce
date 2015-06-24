//ques6
syms x s a
disp('Fourier cosine transform');
f=integ(exp(-a*x)/x*sin(s*x),x,0,%inf);
disp(f)