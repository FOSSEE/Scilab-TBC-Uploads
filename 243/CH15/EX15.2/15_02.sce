//Example No. 15_02
//Liebmann's Iterative method
//Pg No. 489
clear ; close ; clc ;

f(1,1:4) = 100 ;
f(1:4,1) = 100 ;
f(4,1:4) = 0 ;
f(1:4,4) = 0 ;
f(3,3) = 0
for n = 1:5
    for i = 2:3
        for j = 2:3
            if n == 1 & i == 2 & j == 2 then
                f(i,j) = ( f(i+1,j+1) + f(i-1,j-1) + f(i-1,j+1) + f(i+1,j-1) )/4
            else
                f(i,j) = ( f(i+1,j) + f(i-1,j) + f(i,j+1) + f(i,j-1) )/4
            end
        end
    end
    A(2:5,n) = [f(2,2);f(2,3) ;  f(3,2) ;  f(3,3) ]
end
A(1,1:5) = 0:4
disp(A,'First row of below matrix represents iteration number')