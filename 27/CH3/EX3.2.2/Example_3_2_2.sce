//Example 3.2.2 Page 52
//Non-Linear Dynamics and Chaos, First Indian Edition, Print-2007
//Steven H. Strogatz

clear;
clc;
close;

//General INTRODUCTION
disp("To show their is Transcritical Bifurcation show :")
disp("1. Their are always two fixed points ,")
disp("And they change their Stability around Bifurcation Point.")
disp("2. Hence, the nature of given equation should be Quadratic.")
disp("To show this use Taylor Expansion.")
// End INTRODUCTION

// u(dot) = (r+1)u - (1/2)r(u^2) + O(u^3)
// u(dot) = (r+1)u - (1/2)r(u^2) + ZERO -----neglecting higher order terms
// Let u(dot) = f(u)

for r=-4:0.15:3        //Varying Parmater "r" to obtain Bifurcation Diagram
    u1 = 0;            //First Fixed Point.
    u2 = 2*(r+1)/r;    //Second Fixed Point.
    f1 = (r+1);        //f'(u) at u1
    f2 = -(r+1);       //f'(u) at u2
    set(gca(),"auto_clear","off")    //hold on
    set(gca(),"grid",[2,5])
    
    //u(double dot) = f'(u) = (r+1) - r*u
    
    if (f1>0) then    //Unstable Fixed Point.
        plot2d(r+1,u1,style=-2)
    end
    if (f1<0) then    //Stable Fixed Point.
        plot2d(r+1,u1,style=-3)
    end
    if (f2>0) then    //Unstable Fixed Point.
        plot2d(r+1,u2,style=-2)
    end
    if (f2<0) then    //Stable Fixed Point.
        plot2d(r+1,u2,style=-3)
    end
    xtitle("Bifurcation Diagram","x-Axis -(r+1)","u*-fix points")
end
set(gca(),"auto_clear","on")    //hold off
disp("Clearly from the Bifurcation Diagram we see that r=-1 is the bifurcation point.")
//end of Example