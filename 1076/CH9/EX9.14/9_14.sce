clear
clc

E=10
x=3.4
y=2.2
e=1e-5

while (E>e)
    X=[x;y]
    f=(x) + (3* .43429 * log(x))-y^2
    dfx=1 + (3* .43429 /x)
    dfy=-2*y
    g=(2*x*x) - (x*y)-(5*x)+1
    dgx=(4*x) - (y)-(5)
    dgy=-x
    J=[dfx dfy; dgx dgy]
    F=[f;g]
    X1=X-(inv(J)* F)
    E=max(abs(X1-X))
    x=X1(1,1)
    y=X1(2,1)
end
mprintf("x= %.4f, y=%.4f", x,y)

