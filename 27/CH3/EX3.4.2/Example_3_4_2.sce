//Example 3.4.2 Page 58
//Non-Linear Dynamics and Chaos First Indian Edition Print 2007
//Steven H.Strogatz
clear;
clc;
close;
set(gca(),"auto_clear","on")    //hold off

for(r=-1:0.5:1)
    x = -3:0.1:3;
    V = -0.5*r*(x^2)+0.25*(x^4);
    set(gca(),"auto_clear","off")    //hold on
    xtitle("Potential Diagram","X-Axis","Y-Axis")
    plot2d(x,V,style=-4)
    figure
    set(gca(),"grid",[2,5])
    
end
set(gca(),"auto_clear","on")
//End of Example