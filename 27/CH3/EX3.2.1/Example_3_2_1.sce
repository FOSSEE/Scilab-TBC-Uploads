//Example 3.2.1 Page 51
//Non-Linear Dynamics and Chaos, First Indian Edition, Print-2007
//Steven H. Strogatz

clear;
clc;
close;

// General INTRODUCTION
disp("To show their is Transcritical Bifurcation show :")
disp("1. Their are always two fixed points ,")
disp("And they change their Stability around Bifurcation Point.")
disp("2. Hence, the nature of given equation should be Quadratic.")
disp("To show this use Taylor Expansion.")
// END INTRODUCTION

//By Taylor Expansion of given x(dot) and neglecting order(x^3) and higher order terms we get ----
//x(dot) = (1-ab)x + (1/2)(ab*b)x^2.------Let x(dot) = f(x)

//Stability Analysis : Put x(dot)=f(x)=0
for(a=5)                                //Fixing one of the two parameters (i.e "a" And "b")
    for(b=-4:0.15:3)                    //Varying another parameter to plot Bifurcation Diagram.
        
        x1 = 0;    //First Fixed Point
        x2 = 2*(a*b -1)/(a*b*b);     //Second Fixed Point
        f1 = (1-a*b);              //f'(x) at x1
        f2 = -(1-a*b);            //f'(x) at x2
        
        //x(double dot)= f'(x) = (1-ab) + a(b^2)x
        
        set(gca(),"auto_clear","off")        //For "hold on" to plot points.
        set(gca(),"grid",[2,5])             // To set axis
        if(f1>0)                 //Unstable fixed point.
            plot2d(1-a*b,x1,style=-2)
        end
        if(f1<0)                //Stable Fixed point.
            plot2d(1-a*b,x1,style=-3)
        end
        if(f2>0)                //Unstable Fixed Point.
            plot2d(1-a*b,x2,style=-2)
        end
        if(f2<0)                //Stable Fixed Point.
            plot2d(1-a*b,x2,style=-3)
        end
        xtitle("Bifurcation Diagram","x-axis (1-a*b)","x*-fix points")
    end
end
disp("From Graph it is clearly visible that the two fixed points changes stability around point ab=1 ")

set(gca(),"auto_clear","on")    //for hold off

//end of Example