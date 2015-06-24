clear ;
clc;
// Example 3.17
printf('Example 3.17\n\n');
printf('Page No. 80\n\n');

// given
// C_T = 7*x + (40000/(x*y)) + 6*y + 10
//Differentiating C_T with respect to x and y:-
//dC_T/dx = 7 - (40000/(x^2*y))
//dC_T/dy = - (40000/(x*y^2)) + 6

//For optimum conditions :- dC_T/dx = dC_T/dy = 0
//dC_T/dx = 0   => 7 - (40000/(x^2*y)) = 0
//=> y = 40000/(7*x^2).......(1)
//dC_T/dy = 0    =>- (40000/(y^2*x)) +6 = 0
//=> y = (40000/(6*x))^0.5.......(2)

//From equation (1) and (2) 
//=> 40000/(7*x^2) - (40000/(6*x))^0.5 = 0

function y=fsol1(x)
  y = 40000/(7*x^2) - (40000/(6*x))^0.5 ;
endfunction
[xres]=fsolve(20,fsol1);
x = xres;

//from equation (1)
y = 40000/(7*x^2);

//a = d^2C_T/dx^2 = 80000/(x^3*y)
//b = d^2C_T/dy^2 = 80000/(x*y^3)
a = 80000/(x^3*y);
b = 80000/(x*y^3);
if a > 0
    if b > 0
//The optimum conditions must occur at a point of minimum cost- C_T_m
C_T_m = 7*x + (40000/(x*y)) + 6*y + 10;// in Pound
printf('The minimum cost is %.1f Pound',C_T_m)
    end
end


