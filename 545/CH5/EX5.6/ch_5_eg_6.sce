clc
disp("the soln of eqn 5.6-->1-D Steady Heat Conduction");
//in the given problem 
T_1=100, T_10=200
delta_x=(T_10-T_1)/9               //since 9 divisions are to be made
//using central difference method we get
//for node 2--> 2*T_2-T_3=100
for i=2:8, a(i)=-1            //sub diagonal assignment
end
for j=1:8, b(j)=2;           //main diagonal assignment
end
for k=1:7, c(k)=-1;            //super diagonal assignment
end
d(1)=100, d(8)=200
for l=2:7, d(l)=0;
end                     //given values assignment
i=1;
n=8;
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
disp("the values of T from T2 to T9 by TDMA method are");
for i=1:8, disp(x(i));
end 