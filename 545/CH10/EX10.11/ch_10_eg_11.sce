clc
disp("the soln of eg 10.11-->");
for k=2:10, a(k)=-1, b(k)=2.4, c(k)=-1
end
alpha=1,delta_t=.05,delta_x=.1
m=alpha*delta_t/delta_x^2
b(1)=2.4
c(1)=-2
for k=1:11, t(11,k)=400, tstar(11,k)=400, t(k,11)=400,tstar(k,11)=400
end
for i=1:10, for j=1:10, t(i,j)=0, tstar(i,j)=0
    end
end
for tm=.05:.05:.5, for jj=1:10,if jj==1 then for ii=1:10,d(ii)=2*t(ii,2)-1.6*t(ii,1),end,d(10)=d(10)+400,else for ii=1:10, d(ii)=t(ii,jj+1)+t(ii,jj-1)-1.6*t(ii,jj),end,d(10)=d(10)+400,end, 
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
    end, for count=1:10, tstar(count,jj)=x(count),end 
    end
    for ii=1:10,
        if ii==1 then for jj=1:10,d(jj)=2*tstar(ii+1,1)-1.6*tstar(ii,1),end, d(10)=d(10)+400,else for jj=1:10,d(jj)=tstar(ii-1,jj)+tstar(ii+1,jj)-1.6*tstar(ii,jj), end, d(10)=d(10)+400, end
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
    end, 
    for count=1:10, t(ii,count)=x(count), end 
  end
end
disp("the soln by ADI is");
for i=1:10,j=1:10,disp(t(i,j));
end
disp("the table is actually interchanged row & column.. horizontally are the elements of the column");