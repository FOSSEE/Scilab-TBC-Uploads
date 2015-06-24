//Page Number: 6.23
//Example 6.20
clc;
//Given
pe=0.01; //Error probability

//(a) Probabilty of more than one error in 10 recieved digits
n=10;
//As P(X>1)=1-P(X=0)-P(X=1)
//Let x=P(X>1)
//s=P(X=0)+P(X=1)
s=0;
for t=0:1
    f=(factorial(n))/((factorial(t))*(factorial(n-t)));
    s=s+{f*(pe^t)*((1-pe)^(n-t))};
end
x=1-s;
disp(x,'Probabilty of more than one error in 10 recieved digits:');

//(b)Using Poisson approximation
//P(X=k)~[{(%exp)^(-n*p)}*{((n*p)^k)}]/k factorial
s1=0;
for k=0:1
    j=factorial(k);
    s1=s1+[{exp(-n*pe)}*{((n*pe)^k)}]/j;
end
x1=1-s1;
disp(x1,'Using Poisson Approximation:');
