clc
disp("the soln of eg 9.5-->");
R=.326, D=3*10^-7
delta_t=1, delta_r=.0326, conc_ini=10/(1.33*%pi*R^3)
t1=D*delta_t/delta_r^2
disp(conc_ini,"the initial conc. of drug is");
for i=2:10, a(i)=-(1-1/(i-1))
end
b(1)=591.4
for i=2:10,b(i)=3544.5
end
c(1)=-1,for i=2:9, c(i)=-(1+1/(i-1))
end
for i=1:10, x(i)=conc_ini
end
disp("Conc. at centre at t=3hr, 12 hr, 24 hr,48 hr is");
for t=1:delta_t:172800,for i=1:10, y(i)=x(i),end
    d(1)=y(1)*590.4,
    for i=2:10,d(i)=3542.5*y(i)
    end
    i=1, n=10
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
    if t==10800| t==43200| t==86400|t==172800 then disp(x(6));
    end
end