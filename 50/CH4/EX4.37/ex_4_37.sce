// example 4.37
// method of least squares to fit the data to the curve P(x)=a*%e^(-3*t)+b*%e^(-2*t);

t=[.1 .2 .3 .4];
f=[.76 .58 .44 .35];

// I(c0,c1)= summation of (f(x)-a*%e^(-3*t)+b*%e^(-2*t))

// hence on parcially derivating the summation,

n=length(t);m=length(f);
if m<>n then 
   error('linreg - Vectors t and f are not of the same length.');
   abort;
end;

s1=0;                        // s1= summation of f(i)*%e^(-3*t(i));
s2=0;                        // s2= summation of f(i)*%e^(-2*t(i));

for i=1:n
    s1=s1+f(i)*%e^(-3*t(i));
    s2=s2+f(i)*%e^(-2*t(i));
    
end

a=det([s1 sum(%e^(-5*t)); s2 sum(%e^(-4*t))])/det([sum(%e^(-6*t)) sum(%e^(-5*t)); sum(%e^(-5*t)) sum(%e^(-4*t))])

b=det([sum(%e^(-6*t)) s1; sum(%e^(-5*t)) s2])/det([sum(%e^(-6*t)) sum(%e^(-5*t)); sum(%e^(-5*t)) sum(%e^(-4*t))])

// hence  considering the polinomial  P(t)=.06853*%e^(-3*t)+0.3058*%e^(-2*t)