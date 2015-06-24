clc
disp("the soln of eg 9.2-->Transient Conduction in Rectangular Slab");
delta_t=1, delta_x=.05, alpha=10^-5
t1=alpha*delta_t/delta_x^2
for i=2:9, a(i)=-t1
end
for i=1:9,b(i)=1+2*t1
end
for i=1:8, c(i)=-t1
end
t=1,tf=3000
for i=1:9, x(i)=300
end
e1=425,
disp("time when centre temp is 425 K in secs. is")
for t=1:1:tf,for i=1:9, y(i)=x(i),end
    d(1)=y(1)+1.7,
    d(9)=y(9)+2.4,
    for i=2:8,d(i)=y(i)
    end
    i=1, n=9
    Beta(i)=b(i),
    Gamma(i)=d(i)/Beta(i)
    i1=i+1,
    for j=i1:n, Beta(j)=b(j)-a(j)*c(j-1)/Beta(j-1),
        Gamma(j)=(d(j)-a(j)*Gamma(j-1))/Beta(j),
    end 
    x(n)=Gamma(n)
    n1=n-i,
    for k=1:n1, j=n-k,x(j)=Gamma(j)-c(j)*x(j+1)/Beta(j)
    end
    if abs(x(5)-e1)>0 & abs(x(5)-e1)<.1 then disp(t); break;
    end
end
disp("the values of temp. at req. time is");
for i=1:9,disp(x(i)); end