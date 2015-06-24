//example(3.2a) 


//bisection method

deff('[y]=f(x)','y=x^3-x-1')
bisection(1.0,1.5,f)


//regula falsi method

deff('[y]=f(x)','y=x^3-x-1')
regularfalsi(1.0,1.5,f)

//secant method

deff('[y]=f(x)','y=x^3-x-1')
secant(1.0,1.5,f)


//newton rapson method


x=(0.5+1)/2
deff('[y]=f(x)','y=x^3-x-1')
deff('[y]=g(x)','y=1-0.2*cos(x)')

newton(x,f,g)


