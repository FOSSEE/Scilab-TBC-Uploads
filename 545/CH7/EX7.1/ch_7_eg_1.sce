clc
disp("soln of eg 7.1-->First Order Reaction-50 parts")
e1=1,e2=1                                                      //assumed values
u=1,D=10^-4,k=1,C_a_in=1,delta_x=10/50                         //given data
cf_ca1_n1=-2*D/delta_x^2-3*u/delta_x-k-2*u^2/D                 //co-efficient of C-A1 at node 1
cf_ca2_n1=2*D/delta_x^2+u/delta_x
cf_da1_n1=-(2*u^2/D+2*u/delta_x)*C_a_in                         //right hand side co-efficient
cf_ca1_n2=D/delta_x^2+u/delta_x
cf_ca2_n2=-2*D/delta_x^2-u/delta_x-k
cf_ca3_n2=D/delta_x^2
cf_da1_n2=0
cf_ca2_n3=cf_ca1_n2
cf_ca3_n3=cf_ca2_n2
cf_ca4_n3=cf_ca3_n2
cf_da1_n3=0
cf_ca50_n51=2*D/delta_x^2+u/delta_x                           //co-efficient of C-A50 at node 51
cf_ca51_n51=-2*D/delta_x^2-u/delta_x-k
cf_da51_n51=0
for i=2:50, a(i)=cf_ca1_n2,
end
a(51)=cf_ca2_n1,c(1)=cf_ca2_n1
for i=2:50,c(i)=cf_ca3_n2,
end
d(1)=cf_da1_n1
for i=2:51,d(i)=cf_da1_n2
end
for i=1:51,x(i)=0,
end
b(1)=cf_ca1_n1,
for i=2:51,b(i)=cf_ca2_n2,end
while e1>1e-6 & e2>1e-6 do for i=1:51,x1(i)=x(i),end,
i=1, n=51, Beta(i)=b(i),
    Gamma(i)=d(i)/Beta(i)
    i1=i+1,
    for j=i1:n, Beta(j)=b(j)-a(j)*c(j-1)/Beta(j-1),
        Gamma(j)=(d(j)-a(j)*Gamma(j-1))/Beta(j),
    end 
    x(n)=Gamma(n)
    n1=n-i,
    for k=1:n1, j=n-k,x(j)=Gamma(j)-c(j)*x(j+1)/Beta(j)
    end
e1=abs(x(42)-x1(42)), e2=abs(x(18)-x1(18))
end
for i=1:51,disp(x(i))
end