//Page Number: 6.34
//Example 6.41
clc;
//Given
n=16; //binary digits
p=0.01; //Probabilty error due to noise

//(a) Average errors per block
//E(X)=n*p
EofX=n*p;
disp(EofX,'Average errors per block:');

//(b)Varience of errors of block
//s=n*p*(1-p)
s=n*p*(1-p);
disp(s,'Varience of errors per block:');


//(c) Probability that number of errors per block is bgeater or equal than 4
i=4;
//AsP(X>=4)=1=P(X<=3)
P3=0;
for k=0:3;
    f=(factorial(n))/((factorial(k))*(factorial(n-k)));
    P3=P3+(f*(p^k)*((1-p)^(n-k)));
end
P4=1-P3;
disp(P4,'Probability that number of errors per block is bgeater or equal than 4:');
