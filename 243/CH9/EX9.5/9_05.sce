//Example No. 9_05
//Lagrange Interpolation
//Pg No. 283
clear ; close ; clc ;

i = [ 0 1 2 3 ]
X = [ 0 1 2 3 ]
Fx = [ 0 1.7183 6.3891 19.0855 ]
x = poly(0,'x');
n = 3 //order of lagrange polynomial 
p = 0 
for i = 1:n+1
    L(i) = 1
    for j = 1:n+1
        if j == i then
            continue ;
        else
            L(i) = L(i)*( x - X(j) )/( X(i) - X(j) ) ;
        end
    end
    p = p + Fx(i)*L(i) 
end
disp("The Lagrange basis polynomials are")
for i = 1:4
        disp(string(L(i)))
end
disp("The interpolation polynomial is ")
disp(string(p))
disp('The interpolation value at x = 1.5 is ' )
p1_5 = horner(p,1.5);
e1_5 = p1_5 + 1 ;
disp(e1_5,'e^1.5 = ',p1_5);

 
