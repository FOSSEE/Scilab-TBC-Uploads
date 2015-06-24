//Page Number: 11.24
//Example 11.20
clc;
//Given
//f(x)=1/a for x from 0 to a
//0, otherwise

//We have
//H(X)=-integrate[f(x))*log2f(x)]dx
//Here, f(x)=1/a for limits 0 to a
//H(X)=-integrate(1/a)*log2(1/a)dx for 0 to a
//H(X)=log2(a)

//(a)a1=1
a1=1;
y1=log2(a1);
disp(y1,'For a=1, H(X):');

//(b)a2=2
a2=2;
y2=log2(a2);
disp(y2,'For a=2, H(X):');


//(c)a3=1/2
a3=1/2;
y3=log2(a3);
disp(y3,'For a=1/2, H(X):');
