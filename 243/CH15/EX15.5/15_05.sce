//Example No. 15_05
//Initial Value Problems
//Pg No. 494
clear ; close ; clc ;

h = 1 ;
k = 2 ;
tau = h^2/(2*k)
for i = 2:4
    f(1,i) = 50*( 4 - (i-1) )
end
f(1:7,1) = 0 ;
f(1:7,5) = 0 ;
for j = 1:6
    for i = 2:4
        f(j+1,i) = ( f(j,i-1) + f(j,i+1) )/2 
    end
end
disp(f,'The final results are ')