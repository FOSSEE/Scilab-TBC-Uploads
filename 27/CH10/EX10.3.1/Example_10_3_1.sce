//Example 10.3.1 Page 357
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz
clear;
clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//Taking r=2;
r=2;
x=poly(0,"x");
f = x-2*(x^2);                    //Defining Polynomial--> f(x*)-x* = 2*x(1-x)-x. Let this be f(x)
disp("Fixed Points are :")
y = roots(f)

disp("The fixed point x*=1-(1/r) does not exists for r<1, Since x(n+1)<0 and population cannot be negative.")

lambda1=r-2*r*y(1)        //f'(x*) = r-2rx*
lambda2=r-2*r*y(2)

disp("Since, lambda1=2>1, thus orign is Unstable.")
disp("Since, lambda2=0<1, thus x*=1-(1/r) is Stable.")

//Number of points graphically :

r1=3;            //r>1
r2=1;            //r=1, tangential case
r3=0.5;          //r<1

for xn=0:0.05:1
    xn_one=r1*xn*(1-xn);
    plot2d(xn,xn_one,style=-3)
    xn_one=r2*xn*(1-xn);
    plot2d(xn,xn_one,style=-3)
    xn_one=r3*xn*(1-xn);
    plot2d(xn,xn_one,style=-3)
    y=xn;        // to draw y=x line
    plot2d(xn,y,style=-4)
end
xtitle("Graph Showing Number of Fixed Points for differnent values of r","x-Axis ( xn )","y-Axis ( xn+1 )")

//Similarly, check for Stability by changing r.

//End of Example.