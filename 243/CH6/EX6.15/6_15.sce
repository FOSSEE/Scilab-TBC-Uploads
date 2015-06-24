//Example No. 6_15
//Synthetic Division
//Pg No. 176
clear ; close ; clc ;

a = [-9 15 -7 1];
b(4) = 0 ;
for i = 3:-1:1
    b(i) = a(i+1) + b(i+1)*3
    printf('b%i = %f\n',i,b(i))
end
    disp(poly(b,'x','c'),'Thus the polynomial is')