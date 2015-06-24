//Example No. 15_06
//Crank-Nicholson Implicit Method
//Pg No. 497
clear ; close ; clc ;

h = 1 ;
k = 2 ;
tau = h^2/(2*k)
for i = 2:4
    f(1,i) = 50*( 4 - (i-1) )
end
f(1:5,1) = 0 ;
f(1:5,5) = 0 ;
A = [4  -1  0 ; -1  4  -1 ; 0  -1  4]
for j = 1:4
    for i = 2:4
        B(i-1,1) = f(j,i-1) + f(j,i+1)
    end
    C = A\B
    f(j+1,2) = C(1)
    f(j+1,3) = C(2)
    f(j+1,4) = C(3)
end
disp(f,'The final solution using crank nicholson implicit method is ')