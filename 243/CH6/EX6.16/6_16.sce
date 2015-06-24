//Example No. 6_16
//Quadratic factor of a polynomial using Bairstow's Method
//Pg No. 187
clear ; close ; clc ;

a = [ 10 1 0 1];
n = length(a);
u = 1.8 ;
v = -1 ;

b(n) = a(n);
b(n-1) = a(n-1) + u*b(n);
c(n) = 0 ;
c(n-1) = b(n);

for i = n-2:-1:1
    b(i) = a(i) + u*b(i+1) + v*b(i+2) ;
    c(i) = b(i+1) + u*c(i+1) + v*c(i+2) ;
end
for i = n:-1:1
    printf('b%i = %f \n',i-1,b(i))
end
for i = n:-1:1
    printf('c%i = %f \n',i-1,b(i))
end

D = c(2)*c(2) - c(1)*c(3) ;
du = -1*(b(2)*c(2) - c(1)*c(3))/D ;
dv = -1*(b(1)*c(2) - b(2)*c(1))/D ;
u = u + du ;
v = v + du ;
printf('\n D = %f \n du = %f \n dv = %f \n u = %f\n v = %f \n',D,du,dv,u,v)