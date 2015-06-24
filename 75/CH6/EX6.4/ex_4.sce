        //    PG (339)

//    dy/dx=100y -101*(%e)^(-x)
function ydox=f(x,y),ydox=100*y -101*(%e)^(-x),endfunction
funcprot(0)
y0=1;
x0=0;
x=0:5;
y=ode(y0,x0,x,f)

//    Solution will be Y(x) = exp(-x)

//    For the perturbed problem, dy/dx = 100*y - 101*exp(-x), y(0) = 1+e
//    Solution will be Y(x;e) = exp(-x) + e*exp(100*x)
//    This rapidly departs from the true solution.