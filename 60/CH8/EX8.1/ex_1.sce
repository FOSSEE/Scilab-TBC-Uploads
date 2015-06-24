// Example 8.1

deff('[v]=f(x,y)','v=1-(y/x)')
funcprot(0)
deff('[v]=fp(x,y)','v=-(f(x)/x)+(y/(x^2))')
funcprot(0)
deff('[v]=fpp(x,y)','v=-(fp(x)/x)+2*(f(x)/(x^2))-2*(y/(x^3))')
funcprot(0)
deff('[v]=g(x,y)','v=-(fpp(x)/x)+3*(fp(x)/(x^2))-6*(f(x)/(x^3))+6*(y/(x^4))')
funcprot(0)
x1=2
y1=2
x=2.1
y2=y1+(x-2)*f(x1,y1)+((x-2)^2)*fp(x1,y1)/factorial(2)+((x-2)^3)*fpp(x1,y1)/factorial(3)+((x-2)^4)*g(x1,y1)/factorial(4)
