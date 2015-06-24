clc
disp("the soln of eqn 5.7-->1-D Steady Heat Conduction");
dia=.02
l=.05
T_0=320
delta_x=l/4
k=50
h=100
T_surr=20
//B.C--> d(theta)/dx+h(theta)/k=0 at x=0.05
//let m=sqrt(hP/kA)
P=%pi*dia
A=%pi*dia^2/4
m=sqrt(h*P/(k*A));
//using central difference method we get 
//-theta(i-1)+(2+(m*delta_x^2)*theta(i)+theta(i+1))=0
theta_0=T_0-T_surr
//using B.C. at node 4 we get--> theta(5)=theta(3)-2h*theta(4)*delta_x/k
//now the eqns can be solved using TDMA method
for i=2:3, a(i)=-1            //sub diagonal assignment
end
a(4)=-2
for j=1:3, b(j)=2.0625;           //main diagonal assignment
end
b(4)=2.1125
for k=1:3, c(k)=-1;            //super diagonal assignment
end
for l=2:4, d(l)=0;
    end                     //given values assignment
d(1)=300
i=1;
n=4;
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
disp("the values of T from T1 to T4 in Celsius by TDMA method are");
for i=1:4, disp(x(i)-T_surr);
end 