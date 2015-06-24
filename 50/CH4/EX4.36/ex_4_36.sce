// example 4.36
// method of least squares to fit the data to the curve P(x)=c0*X+c1/squrt(X)

x=[.2 .3 .5 1 2];
f=[16 14 11 6 3];

// I(c0,c1)= summation of (f(x)-(c0*X+c1/sqrt(X)))^2 

// hence on parcially derivating the summation,

n=length(x);m=length(f);
if m<>n then 
   error('linreg - Vectors x and f are not of the same length.');
   abort;
end;

s1=0;                        // s1= summation of x(i)*f(i)
s2=0;                        // s2= summation of f(i)/sqrt(x(i))
s3=0;
for i=1:n
    s1=s1+x(i)*f(i);
    s2=s2+f(i)/sqrt(x(i));
    s3=s3+1/x(i);
end

c0=det([s1 sum(sqrt(x));s2 s3])/det([sum(x^2) sum(sqrt(x));sum(sqrt(x)) s3])

c1=det([sum(x^2) s1;sum(sqrt(x)) s2])/det([sum(x^2) sum(sqrt(x));sum(sqrt(x)) s3])
X=poly(0,"X");
P=c0*X+c1/X^1/2
// hence  considering the polinomial  P(x)=7.5961*X^1/2-1.1836*X