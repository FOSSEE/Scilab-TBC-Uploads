clear ;
clc;
// Example 3.15
printf('Example 3.15\n\n');
printf('Page No. 77\n\n');

// given
i_t = [20 40 60 80 100];// Insulation thickness in mm
f_c = [2.2 3.5 4.8 6.1 7.4];// Fixed costs in (10^3 Pound / year)
h_c = [10.2 6.5 5.2 4.6 4.2];// Heat costs in (10^3 Pound / year)
t_c = [12.4 10 10 10.7 11.6];// Total costs in (10^3 Pound / year)

//(a) Graphical solution
//Refer figure 3.8
C_T = 9750;// Minimum total cost in Pound
t = 47;// Corresponding thickness of insulation in mm
printf('The most economic thickness of insulation is %.0f mm \n',t)

//(b) Numerical solution
// The cost due to heat losses,C1, and the fixed costs,C2, vary according to the equations;-
// C1 = (a/x) + b     and    C2 = (c*x) + d
// Substituting the values of C1 and C2 together with the corresponding insulation thickness values , the following equations are obtained :-
// C1 = (150*10^3/x) + 2.7*10^3    and    C2 = (65*x) + 0.9*10^3
//And to obtain the total costs
//CT = C1 + C2 = (150*10^3/x) + (65*x) + 3.6*10^3
// Differentiate to optimise, and put dCT/dx equal to zero
//dCT/dx =-((150*10^3)/x^2) + 65 = 0

//Let y = dCT/dx
function y=fsol1(x)
  y = -((150*10^3)/x^2) + 65;
endfunction
[xres]=fsolve(50,fsol1);
x = xres;
printf('The optimum thickness of insulation is %.0f mm \n',x)
