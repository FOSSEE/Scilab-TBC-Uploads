clc
disp("soln of eg 7.2--&gt;Second Order Reaction-20 parts")
e1=1,e2=1
u=1,D=10^-4,k=1,C_a_in=1,delta_x=10/20
cff_ca2_n1=2*D/delta_x^2+u/delta_x                       //co-efficient of C-A2 at node 1
cff_da1_n1=-(2*u^2/D+2*u/delta_x)*C_a_in                 //right hand side co-efficient
cff_ca1_n2=D/delta_x^2+u/delta_x
cff_ca3_n2=D/delta_x^2                                    //co-efficient of C-A3 at node 2
cff_da1_n2=0
cff_ca2_n3=cff_ca2_n1
cff_ca4_n3=cff_ca3_n2
cff_da1_n3=0
cff_ca20_n21=2*D/delta_x^2+u/delta_x                        //co-efficient of C-A20 at node 21
cff_da21_n21=0
for i=2:20, a(i)=cff_ca1_n2,
end
a(21)=cff_ca2_n1,c(1)=cff_ca2_n1
for i=2:20,c(i)=cff_ca3_n2,
end
d(1)=cff_da1_n1
for i=2:21,d(i)=cff_da1_n2
end
for i=1:21,x(i)=0,
end
while e1&gt;1e-6 &amp; e2&gt;1e-6 do for i=1:21,x1(i)=x(i),end, 
   cff_ca1_n1=-2*D/delta_x^2-3*u/delta_x-x1(1)-2*u^2/D                 //main diagonal elements dependence on conc.
   b(1)=cff_ca1_n1,
   for i=2:21,b(i)=-2*D/delta_x^2-u/delta_x-x(i),end

//solving by TDMA method
   i=1, n=21, Beta(i)=b(i),
    Gamma(i)=d(i)/Beta(i)
    i1=i+1,
    for j=i1:n, Beta(j)=b(j)-a(j)*c(j-1)/Beta(j-1),
        Gamma(j)=(d(j)-a(j)*Gamma(j-1))/Beta(j),
    end 
    x(n)=Gamma(n)
    n1=n-i,
    for k=1:n1, j=n-k,x(j)=Gamma(j)-c(j)*x(j+1)/Beta(j)
    end
e1=abs(x(1)-x1(1)), e2=abs(x(21)-x1(21))
end
for i=1:21,disp(x(i))
end