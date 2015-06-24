// example 4.41
// using chebyshev polinomials obtain least squares approximation of second degree;

// the chebeshev polinomials;
x=poly(0,"x");
T0=1;
T1=x;
T2=2*x^2-1;


// I=integrate ('1/(1-x^2)^(1/2)*(x^4-c0*T0-c1*T1-c2*T2)^2','x',-1,1)

// since;
c0=integrate('(1/3.14)*(x^4)/(1-x^2)^(1/2)','x',-1,1)

c1=integrate('(2/3.14)*(x^5)/(1-x^2)^(1/2)','x',-1,1)

c2=integrate('(2/3.14)*(x^4)*(2*x^2-1)/(1-x^2)^(1/2)','x',-1,1)

 f=(3/8)*T0+(1/2)*T2;