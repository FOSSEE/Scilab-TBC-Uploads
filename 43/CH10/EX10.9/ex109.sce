//Ex 10.9
//Impulse response
num=[1 3];
den=[1 3 2];
n=0:1:20;
x=[1 zeros(1,20)];
y=filter(num,den,x);
plot(n,y);
