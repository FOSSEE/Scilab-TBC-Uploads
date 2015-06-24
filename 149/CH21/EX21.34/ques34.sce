//error no output
//ques34
disp('to find the laplace transform of periodic function ');
syms w t s
f=1/(1-exp(-2*%pi*s/w))*integ(exp(-1*s*t)*sin(w*t),t,0,%pi/w);
disp(f)
