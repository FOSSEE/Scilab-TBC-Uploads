function [x]=gaussseidel(A,b,x0)
[nA,mA]=size(A)
n=nA
[L,U] = lu(A)
d = diag(A)
a11 = d(1,1)
a22 = d(2,1)
a33 = d(3,1)
D = [a11 0 0;0 a22 0;0 0 a33]
H = -inv(L+D)*U
C = inv(L+D)*b
for m=0:3
            x = -inv(D)*(L+U)*x + inv(D)*b
            m=m+1
            disp(x)
end

endfunction