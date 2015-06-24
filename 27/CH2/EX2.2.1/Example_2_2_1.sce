//Example 2.2.1 Page 19
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","on")    //hold off

x=poly(0,"x");
f = (x^2)-1;                    //Defining Polynomial--> x(dot)=x^2 -1. Let this be f(x)
disp("Fixed Points are :")
y = roots(f)

set(gca(),"auto_clear","off")    //hold on
set(gca(),"grid",[2,5])
for (x=-5:0.1:5)
    plot2d(x,(x^2)-1,style=-2)

end
    plot2d(-1,0,style=-4)        //To show "Diamond Sign" --> Representing a Fixed Stable Point.
    plot2d(1,0,style=-3)        //To Show "a Cross within Circle" --> Representing a Fixed Unstable Point.
    
    xtitle("Stability Diagram","x-axis","x*-fix points")
    
disp("From the diagram it is clear that x=-1 is the Fixed Stable Point.")
disp("And x=+1 is the Unstable Fixed Point.")


//End of Example 2.2.1