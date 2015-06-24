disp('Given matrix A=')
a=[-7 -48 -16;1 14 6;-3 -45 -19]
disp(a)
disp('and matrix P=')
p=[-3 -2 3;1 1 -1;-3 -3 0]
disp(p)
disp('Hence, marix D=')
s=inv(p)
disp(s*a*p)