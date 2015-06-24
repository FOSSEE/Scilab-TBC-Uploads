//ch 1 ex 1.1- solving set of algebraic equations by Tri diagonal Matrix Algorithm Method.
clc
disp("the soln of eg 1.1-->");
for i=2:7, a(i)=1;            //sub diagonal assignment
end
for j=1:7, b(j)=-2;           //main diagonal assignment
end
for k=1:6, c(k)=1;            //super diagonal assignment
end
d(1)=-240                     //given values assignment
for l=2:6, d(l)=-40;
end
d(7)=-60

i=1;
n=7;
beta1(i)=b(i);                //initial b is equal to beta since a1=0
gamma1(i)=d(i)/beta1(i);      //since c7=0
m=i+1;
for j=m:n, beta1(j)=b(j)-a(j)*c(j-1)/beta1(j-1);
gamma1(j)=(d(j)-a(j)*gamma1(j-1))/beta1(j);
end
x(n)=gamma1(n);               //since c7=0
n1=n-i;
for k=1:n1, j=n-k; x(j)=gamma1(j)-c(j)*x(j+1)/beta1(j);
end

disp("the solution of ex 1.1 by TDMA method is");
for i=1:7, disp(x(i));
end
