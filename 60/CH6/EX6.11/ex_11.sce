 
//Example 6.11

x0=-1
x1=18
         //pi=<f,pi>
p0=integrate('exp(x)','x',x0,x1)

p1=integrate('x*exp(x)','x',x0,x1)

p2=integrate('(exp(x))*((x^2)-(1/3))','x',x0,x1)

p3=integrate('(exp(x))*((x^3)-3*x/5)','x',x0,x1)

//for legendre polynomials one can show
//si= <pi,pi> = 2/(2*i+1)
s0=2/(2*0+1)
s1=2/(2+1)
s2=2/(2*2+1)
s3=2/(2*3+1)

//di*=<f,pi>/si
//p*(x)=y=d0*1+d1*x+d2*(3/2)*((x^2)-(1/3))+d3*((x^3)-3*x/5)*(5/2)
//p*(x)=y=(p0/s0)*1+(p1/s1)*x+(p2/s2)*(3/2)*((x^2)-(1/3))+(p3/s3)*((x^3)-3*x/5)*(5/2)
poly(0,"x")
y=1.17552011*(1)+(1.103638324)*(x)+(0.3578143506)*(3/2)*((x^2)-(1/3))+(0.07045563367)*((x^3)-3*x/5)*(5/2)
//On (-1,1) ,this polynomial a maximum deviation from exp(x) of about 0.01
