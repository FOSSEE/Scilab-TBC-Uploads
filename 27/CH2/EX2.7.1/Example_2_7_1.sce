//Example 2.7.1 Page 31
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//x(dot) = f(x) = -x
// On Integrating we get V(x) = (1/2)x^2 + C ; C = 0.

//Now, Plotting the potential i.e. V(x)

for x = -5:0.5:5
    V = (1/2)*x^2;
    plot2d(x,V,style=-2)
end
plot2d(0,0,style=-4)    //Just to show that the fixed point is Stable.
set(gca(),"grid",[2,5])
xtitle("Potential Diagram","x-Axis(x)","y-Axis (V(x))")

disp("From graph of V(x) v/s x itself, it is clear that :-")
disp("The only equilibrium point is at x=0")
disp(" And from the flow we can conclude that the x*=0 point is Stable.")

disp("OR")
disp("f(dot)(x) = -1 for all x; Thus every equilibrium point which exists is Stable.")

//End of Example.