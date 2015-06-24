disp('To check if the given 2X2 matrix is symmetric')
a=[3 5;5 -7]
disp(a,'A=')
if(a(1,2)==a(2,1))
  disp('A is a symmetric matrix because the (1,2) and(2,1) entries match.')
else
  disp('A is not a symmetric matrix')
end