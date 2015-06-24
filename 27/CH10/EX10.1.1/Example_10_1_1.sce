//Example 10.1.1 Page 350
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz
clear;
clear;
clc;
close;

x=poly(0,"x");
f = (x^2)-x;                    //Defining Polynomial--> x(dot)=x^2 -1. Let this be f(x)
disp("Fixed Points are :")
y = roots(f)

lambda1=evstr(2*y(1))
lambda2=evstr(2*y(2))

//if lambda1<1 then
  //  disp(y(1))
    //disp("Stable.")
//elseif lambda1>1
  //  disp(y(1))
    //disp("Unstable.")
//else
//    disp("Unconclusive since lambda=1.")
//end

//if lambda2<1 then
//    disp(y(2))
//    disp("Stable.")
//elseif lambda2>1
//    disp(y(2))
//    disp("Unstable.")
//else
//    disp("Unconclusive since lambda=1.")
//end

disp("Since lambda1=0<1, Thus it is stable.")
disp("Since lambda2=2>1 Thus it is unstable.")

//End of Example.
