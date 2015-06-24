disp('QR decomposition of a matrix')
disp('given matrix A=')
a=[5 9;1 7;-3 -5;1 5]
disp(a)
disp('given matrix Q=')
q=(1/6)*[5 -1;1 5;-3 1;1 3]
disp(q)
disp('Therefore, R=')
s=q'*a
disp(s)