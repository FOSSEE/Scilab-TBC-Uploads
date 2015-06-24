clc
disp("the soln of eg 9.1-->Transient heat conduction in a Rectangular slab")
disp("the values of Temp measured from centre at the gap of .2 cm are")
alpha=10^-5, delta_t=.1, delta_x=10^-3           //given data
m=alpha*delta_t/(delta_x^2)
for i=2:4, a(i)=m                               //sub-diagonal
end
b(1)=(-2*m-1)/2
for i=2:4,b(i)=-2*m-1                               //diagonal
end
for i=1:3, c(i)=m                               //super-diagonal
end
for i=1:4, x(i)=20                              //initial temperature
end
for t=0.1:.1:3.1,for i=1:4, y(i)=x(i), end           //TDMA method
    d(1)=-.5*y(1),
    d(2)=-y(2)
    d(3)=-y(3)
    d(4)=-y(4)-300
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
for i=1:4,disp(x(i));                                 //solution of temperature
end
disp("-----------------") 
end
disp("----------END---------");