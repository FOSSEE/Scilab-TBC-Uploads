//f(x)=4x2-2x-4
clc
disp("the solution of ex 5.4 by TDMA method is");
y_1=0
dy_by_dx=-3            //at x=1
delta_x=1/3           //since given 3 parts and length=1
for i=0:3,j=0:delta_x:1;
end
//given to divide the line in 3 parts
function d=fx3(x),
d=(4*x^2-2*x-4)
endfunction
f2=fx3(j(2))
f3=fx3(j(3))
f4=fx3(j(4))
disp("the exact analytical soln are");
for i=1:3,y(i)=-2*j(i+1)^2+j(i+1),disp(y(i)); 
end
//using B.C.-2 at node 4 we get
//(y_5-y_3)/(2*delta_x)=-3
//eqn at node 2
//-20*y_2+9*y_3=f2
//at node 3
//9*y_2-20*y_3+9*y_4=f3
//at node 4
//18*y_3-20*y_4=16
disp(f4,f3,f2,"the value of f(x) at node 2 3 and 4 are");
//now solving the equations using TDMA method 

a(2)=9,a(3)=18            //sub diagonal assignment

for j=1:3, b(j)=-20;           //main diagonal assignment
end
for k=1:2, c(k)=9;            //super diagonal assignment
end
d(1)=f2                     //given values assignment
d(2)=f3
d(3)=16

i=1;
n=3;
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
disp("the values of y2, y3, y4 by TDMA method are");
for i=1:3, disp(x(i));
end
