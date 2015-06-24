// example 5.18
// caption: gauss-chebyshev method

// we write the integral as I=integral f(x)/sqrt(1-x^2) in the range [-1,1];
// where f(x)=(1-x^2)^2*cos(x)

deff('[y]=f(x)','y=(1-x^2)^2*cos(x)');

// 1) since , from gauss chebyshev one point rule;
I1=(3.14)*f(0)

// 2) since , from gauss chebyshev two point rule;
I2=(3.14/2)*f(-1/sqrt(2))+f(1/sqrt(2))

// 3) since , from gauss chebyshev three point rule;
I=(3.14/3)*(f(-sqrt(3)/2)+f(0)+f(sqrt(3)/2)) 


// and 4) since , from gauss legendre three point rule;
I=(1/9)*(5*f(-sqrt(3/5))+8*f(0)+5*f(sqrt(3/5))) 



