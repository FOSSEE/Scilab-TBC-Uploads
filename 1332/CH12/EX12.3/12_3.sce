//Example 12.3
//Aitken-Neville's Method
//Page no. 378
clc;close;clear;

function [x,y,z]=tran(a,b)        // function for exchanging values
    z=a;y=b;x=z;
endfunction
deff('y=P(a,b,c,d,e)','y=(c(d)*b(d+1)-c(d+e)*b(d))/(a(d+e)-a(d))')  //function for finding polynomials
xi=[0.8,1,1.2,1.4,1.6];
yi=[2.2255,2.7183,3.3201,4.0552,4.9530];
x=1.23
[xi(5),xi(1),a]=tran(xi(1),xi(5))
[xi(4),xi(1),a]=tran(xi(1),xi(4))
[xi(3),xi(2),a]=tran(xi(2),xi(3))
[xi(2),xi(1),a]=tran(xi(1),xi(2))
[yi(5),yi(1),a]=tran(yi(1),yi(5))
[yi(4),yi(1),a]=tran(yi(1),yi(4))
[yi(3),yi(2),a]=tran(yi(2),yi(3))
[yi(2),yi(1),a]=tran(yi(1),yi(2))
for i=1:5
    x_xi(i)=x-xi(i);
end
printf('xi     x-xi       yi\n')
printf('------------------------\n')
for i=1:5
    printf('%.1f     %.2f\t%f\n',xi(i),x_xi(i),yi(i))
end
printf('\n\nPolynomials\n')
printf('-----------\n')
for i=1:4
    for j=1:5-i
         printf('%f\n',P(xi,yi,x_xi,j,i))
         yi(j)=P(xi,yi,x_xi,j,i)
    end
    printf('\n\n\n')
end