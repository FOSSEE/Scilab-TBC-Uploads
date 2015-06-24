   // Example(3.1)

// finding roots using bisection method
    
     deff('[y]=f(x)','y=x-0.2*sin(x)-0.5')
     bisection(0.5,1.0,f)


//regula falsi method

deff('[y]=f(x)','y=x-0.2*sin(x)-0.5')
regularfalsi(0.5,1.0,f)

//secant method

deff('[y]=f(x)','y=x-0.2*sin(x)-0.5')
secant(0.5,1.0,f)


//newton rapson method


x=(0.5+1)/2
deff('[y]=f(x)','y=x-0.2*sin(x)-0.5')
deff ('[y]=g(x)','y=1-0.2*cos(x)')
x=newton(x,f,g)

