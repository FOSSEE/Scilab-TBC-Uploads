//clear//
//Example10.12:Inverse z tranform:For Finite duration discrete sequence
syms z;
X = [4*z^2 0 2 3*z^-1];
n = -2:1;
for i = 1:length(X)
  x(i) = X(i)*(z^n(i));
end
disp(x,'x[n]=')
