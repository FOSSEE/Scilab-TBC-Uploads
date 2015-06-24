//Page Number: 6.21
//Example 6.17
clc;
//Given
P1=0.6;
P0=0.4;
n=5; //Five digit sequence
j=2; //two outcomes 0 and 1

//(a)1,1,0,0,0
xf=(factorial(n))/((factorial(j))*(factorial(n-j)));
s=xf*(P1^j)*(P0^(n-j));
disp(s,'Probability for 1,1,0,0,0:');

//(b)atleast 3 1's
//P(X>=3)=1-P(X<=2)
//Here y=1-x
x=0;
for k=0:2
    f=(factorial(n))/((factorial(k))*(factorial(n-k)));
    x=x+{f*((P1^k)*(P0^(n-k)))};
end
y=1-x;
disp(y,'Probability for atleast three 1 s:');

