clc
disp("the soln of eg 9.3-->Transient Conduction in cylinder");
delta_t=.1, delta_r=.001, alpha=10^-5              //given data
t1=alpha*delta_t/delta_r^2
a(2)=.5*t1,a(3)=.75*t1,a(4)=.833*t1                //sub-diagonal
b(1)=-4*t1-1
for i=2:4,b(i)=-2*t1-1                             //main diagonal
end
c(1)=4*t1,c(2)=1.5*t1,c(3)=1.25*t1                 //super-diagonal
for i=1:4, x(i)=20
end
disp("T1,T2,T2 & T4 at time interval of .1 sec is")
for t=.1:.1:2.1,for i=1:4, y(i)=x(i),end                      //TDMA Method
    d(4)=-y(4)-7*t1*300/6,
    for i=1:3,d(i)=-y(i)
    end
    i=1, n=4
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
disp(x(4),x(3),x(2),x(1));
disp("--------------------");
end