clc
disp("the soln of eg 5.8-->Chemical Reaction and Diffusion in Pore");
lnght=.001
k_const=.001
D=10^-9
delta_x=l/100
C=1                 //in mol/m3
//B.C. are C=1 at x=0
//         dC/dx=0 at x=10^-3    since at the end point conc. is const.
//using central difference method we get the following eqns which can be solved using TDMA method
for i=2:99, a(i)=1            //sub diagonal assignment
end
a(100)=2                  //since C99=C100 using B.C. 
for j=1:100, b(j)=-2.0001,           //main diagonal assignment
end
for k=1:99, c(k)=1;            //super diagonal assignment
end
d(1)=-1
for l=2:100, d(l)=0;
end                     //given values assignment
i=1;
n=100;
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
disp(x(50),"the values of conc. at x=.5mm or at the 50th node is");