clc
disp("the soln of eg 10.10-->Alternating Direction Implicit Method");
nmax=25
a(2)=1, a(3)=1,                               //defining variables
b(1)=-4,b(2)=-4,b(3)=-4
c(1)=1,c(2)=1
t(1,2)=20,t(1,3)=20,t(1,4)=20,t(2,1)=20,t(3,1)=20,t(4,1)=20,t(5,2)=20,t(5,3)=20,t(5,4)=20,t(2,5)=400,t(3,5)=400,t(4,5)=400
tstar(1,2)=20,tstar(1,3)=20,tstar(1,4)=20,tstar(2,1)=20,tstar(3,1)=20,tstar(4,1)=20,tstar(5,2)=20,tstar(5,3)=20,tstar(5,4)=20,tstar(2,5)=400,tstar(3,5)=400,tstar(4,5)=400
for i=2:4, for j=2:4 t(i,j)=20
    end
end
//solving by TDMA Method
for nn=1:nmax, for jj=2:4,d(1)=-t(1,jj)-t(2,jj+1)-tstar(2,jj-1),
        d(2)=-t(3,jj+1)-tstar(3,jj-1),
        d(3)=-t(5,jj)-t(4,jj+1)-tstar(4,jj-1)
        i=1,n=3
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
    tstar(2,jj)=x(1)
    tstar(3,jj)=x(2)
    tstar(4,jj)=x(3)
end
for ii=2:4,d(1)=-t(ii,1)-tstar(ii+1,2)-tstar(ii-1,2),
    d(2)=-tstar(ii+1,3)-tstar(ii-1,3)
    d(3)=-t(ii,5)-tstar(ii+1,4)-tstar(ii-1,4)
    i=1,n=3
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
    t(ii,2)=x(1)
t(ii,3)=x(2)
t(ii,4)=x(3)
end
end
disp("the soln by ADI method is");
disp(t(2,4),t(2,3),t(2,2));
disp("--------------");
disp(t(3,4),t(3,3),t(3,2));
disp("--------------");
disp(t(4,4),t(4,3),t(4,2));