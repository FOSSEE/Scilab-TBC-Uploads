//ques5
syms x s
disp('Fourier cosine transform');
f=integ(x*cos(s*x),x,0,1)+integ((2-x)*cos(s*x),x,1,2);
disp(f)