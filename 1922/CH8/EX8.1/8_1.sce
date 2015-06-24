clc
clear
//Initialization of variables
function V = func(C,phi)
    V=C+2-phi
endfunction
//calculations and results
disp("part a")
printf("degrees of freedom = %d ",func(2,2))
disp("part b")
printf("degrees of freedom = %d ",func(3,2))
disp("part c")
printf("degrees of freedom = %d ",func(3,3))
