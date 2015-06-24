//Example 2.4.3 Page 25
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on


for x = -5:0.5:5
    f1 = -(x^3);
    subplot(221)
    plot2d(x,f1,style=-2)
    plot2d(0,0,style=-4)
    set(gca(),"grid",[2,5])
    xtitle("Bifurcation-Diagram","x-Axis(x)","y-Axis (x(dot))")
    
    f2 = x^3;
    subplot(222)
    plot2d(x,f2,style=-2)
    plot2d(0,0,style=-3)
    set(gca(),"grid",[2,5])
    xtitle("Bifurcation-Diagram","x-Axis(x)","y-Axis (x(dot))")
    
    f3 = x^2;
    subplot(223)
    plot2d(x,f3,style=-2)
    plot2d(0,0,style=-5)
    set(gca(),"grid",[2,5])
    xtitle("Bifurcation-Diagram","x-Axis(x)","y-Axis (x(dot))")
    
    f4 = 0;
    subplot(224)
    plot2d(x,f4,style=-2)
    set(gca(),"grid",[2,5])
    xtitle("Bifurcation-Diagram","x-Axis(x)","y-Axis (x(dot))")
    
end
//set(gca(),"grid",[2,5])
//xtitle("Logistic Map","x-Axis(N)","y-Axis (N(dot))")