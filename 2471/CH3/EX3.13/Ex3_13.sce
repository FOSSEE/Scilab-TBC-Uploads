clear ;
clc;
// Example 3.13
printf('Example 3.13\n\n');
printf('Page No. 73\n\n');

// given
Cash_out = 80000;// Present value of cash outflow for project F in Pound
n = 5;// years
Cash_in= [50000 40000 30000 20000 10000]// Cashn in \flow for project F in Pound
NPV = 0;//At the end of 5 years

//Let the unknown rate for project F be rm.

//The amount standing at the end of 5 years is\n => 0 = 80000*(1+rm)^5 - 50000*(1+rm)^4 - 40000*(1+rm)^3 - 30000*(1+rm)^2 - 20000*(1+rm)^1 - 10000
// By taking (1+rm) = x\n =>8*x^5 - 5*x^4 - 4*x^3 - 3*x^2 - 2*x - 1 = 0\n\n')

function y=fsol1(x)
  y= 8*x^5 - 5*x^4 - 4*x^3 - 3*x^2 - 2*x - 1;
endfunction
[xres]=fsolve(100,fsol1);
xres
rm = (xres - 1)*100;
printf('The value of rm for project F is %3.0f per cent\n',ceil(rm))

