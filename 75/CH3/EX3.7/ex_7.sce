        //    PG (144)

deff('[y]=f(x)','y=sqrt(x)')
funcprot(0)
deff('[y]=fp(x)','y=0.5/sqrt(x)')
funcprot(0)
deff('[y]=fpp(x)','y=-0.25*x^(-3/2)')
funcprot(0)
deff('[y]=fppp(x)','y=3*x^(-2.5)/8')
deff('[y]=fpppp(x)','y=-15*x^(-7/2)/16')

//    f[2.0,2.1,.....2.4] = -0.002084

fpppp(2.3103)/factorial(4)