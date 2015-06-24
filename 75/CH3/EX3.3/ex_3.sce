        //    PG (137)

X=[0,-1]
Y=[1,2]
deff('[y]=f(x)','y=log(x)')
deff('[y]=fp(x)','y=1/x')
deff('[y]=fpp(x)','y=-1/(x)^2')
p = lagrange(X,Y)
//    E = f(x)-p
e = 0.00005    //    for a four-place logarithmic table
