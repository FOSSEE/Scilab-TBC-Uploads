clc
disp("the soln of eg 8.2--&gt;");
for i=1:100, x(i)=0
end
iter=0, e1=1, f=1
k=.1,D=10^-9,r=.01,delta_r=r/10,t1=k*delta_r^2/D
while e1&gt;1e-6 &amp; f&gt;1e-6 do iter=iter+1,for i=1:100, x1(i)=x(i),
    end, for i=2:100, a(i)=1-(1/(i-1))
    end, b=-6-t1*x1(1); , for i=2:100, b(i)=-2-t1*x1(i)
    end, c(1)=6, for i=2:99,c(i)=1+(1/(i-1))
    end, for i=1:99,d(i)=0, end, d(100)=-100/99,
    i=1, n=100, Beta(i)=b(i),
    Gamma(i)=d(i)/Beta(i)
    i1=i+1,
    for j=i1:n, Beta(j)=b(j)-a(j)*c(j-1)/Beta(j-1),
        Gamma(j)=(d(j)-a(j)*Gamma(j-1))/Beta(j),
    end 
    x(n)=Gamma(n)
    n1=n-i,
    for k=1:n1, j=n-k,x(j)=Gamma(j)-c(j)*x(j+1)/Beta(j)
    end
    e1=abs(x(1)-x1(1)),
    f=abs(x(100)-x1(100)),
end
disp("the solution by TDMA of node 77 to 99 by 2nd order rxn. is");
for i=77:100,
    disp(x(i));
end