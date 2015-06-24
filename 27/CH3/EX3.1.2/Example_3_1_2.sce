// Example 3.1.2  Pg 47
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H.Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","on")    //hold off

for(r=0:1:3)                   //Varying value of parameter "r" to see number of fixed point solutions.
    x=-2:0.1:3;
    set(gca(),"grid",[2,5])
    set(gca(),"auto_clear","off")    //hold on
    plot2d(x,exp(-x),style=-4)
    plot2d(x,r-x,style=-2)
    figure        //to get new graphics window
    set(gca(),"grid",[2,5])
    xtitle("Graph showing Number of Fix Points","X-Axis","Y-Axis")
end    

    disp("From the graph we get intersection point")
    disp("And hence we got our FIXED POINT SOLUTION.")
    disp("Clearly from graph we get stable solution when line is below exp(-x) graph.")
    disp("Unstable solution when line is above exp(-x) graph.")
    disp("From graph we infer that :")
    disp("1. No Fixed Points for r<1")
    disp("2. One Fixed Point when r=1.")
    disp("3. Two Fixed Points for  r>1.")
    disp("hence Bifurcation Point is cleraly, r(c)=1")
set(gca(),"auto_clear","on")
//End of Example
    