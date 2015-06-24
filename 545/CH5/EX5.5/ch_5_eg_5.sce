clc
disp("the soln of eqn 5.5-->");
delta_x=.1
y_11=1
dy_by_dx_1=0            //dy/dx at x=0
// given eqn d2y/dx2=y
disp("the analytical soln are");
for i=1:10, y_an(i)=cosh((i-1)/10)/cosh(1), disp(y_an(i));
end
//using central difference method we have 
//y(i-1) - (2+delat_x^2)y(i) + y(i+1)=0
//therefore the eqns can be solved using TDMA method
for i=2:10, a(i)=1            //sub diagonal assignment
end
for j=1:10, b(j)=-2.01;           //main diagonal assignment
end
c(1)=2
for k=2:9, c(k)=1;            //super diagonal assignment
end
for l=1:9, d(l)=0;
    end                     //given values assignment
d(10)=-1
i=1;
n=10;
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
disp("the values of y from y1 to y10 by TDMA method are");
for i=1:10, disp(x(i));
end 