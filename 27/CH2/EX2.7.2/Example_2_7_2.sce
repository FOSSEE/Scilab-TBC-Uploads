//Example 2.7.2 Page 31
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//Given : x(dot) = f(x) = x - x^3.
//On integrating we get -->  V(x) = -(1/2)x^2  +  (1/4)x^4  +  C ; C=0.

//Now plotting V(x) v/s x ; and observe fix points and their Stabilities

for x = -2:0.05:2
    V = -(1/2)*(x^2) + (1/4)*(x^4);
    plot2d(x,V,style=-2)
end
plot2d(0,0,style=-3)    //Just to show that the fixed point is UnStable.
plot2d(-1,-1/4,style=-4)    //Just to show that the fixed point is Stable.
plot2d(1,-1/4,style=-4)    //Just to show that the fixed point is Stable.
set(gca(),"grid",[2,5])
xtitle("Double-Well Potential Diagram (Bistable)","x-Axis(x)","y-Axis (V(x))")