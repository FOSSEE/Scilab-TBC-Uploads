// Example 3.1.1, Page = 47
// Non-Linear Dynamics and Chaos, First Indian Edition
//Steven H. Strogatz
// x(dot)=f(x)=r-(x^2)
// Notation: x1,x2,x3........ are the fixed point solutions
// since x* is an error, because of multiplication operator.

clear;
clc;
close;

for r=-1:0.1:+1                //Varying value of parameter "r" so as to obtain bifurcation diagram.
     
    x1 = +(sqrt(r));           //First Fixed Point.
    x2 = -(sqrt(r));           //Second Fixed Point.
    f1 = -2*x1;                //f'(x) at x1.
    f2 = -2*x2;                //f'(x) at x2.
    
    //x(double dot) = f'(x) = -2*x.
    set(gca(),"auto_clear","off")        //hold on
    set(gca(),"grid",[2,5])
    if (r<0) then
        y = 0;    //just to draw y=0 line for r<0, as no solution
        disp(r)
        disp("No fixed points.")
        plot2d(r,y,style=-2)
    
    else
        set(gca(),"auto_clear","off")
        if(f1>0)    //unstable solutions
            disp(r,x1)
            disp("unstable solutions")
            plot2d(r,x1,style=-1)
        
        end
        if(f1<0)    //Stable solutions
            disp(r,x1)
            disp("stable solutions")
            plot2d(r,x1,style=-2)
        
        end
    
        set(gca(),"auto_clear","off")
    
        if(f2>0)    //unstable solutions
            disp(r,x2)
            disp("unstable solutions")
            plot2d(r,x2,style=-1)
        
        end
        if(f2<0)    //stable solutions
            disp(r,x2)
            disp("stable solutions")
            plot2d(r,x2,style=-2)
        
        end
        xtitle("Bifurcation Diagram","r-parameter","x*-fix points")
    end
end
disp("Clearly from the graph x=0 is bifurcation point.")
set(gca(),"auto_clear","on")    //hold off
//End of Example
