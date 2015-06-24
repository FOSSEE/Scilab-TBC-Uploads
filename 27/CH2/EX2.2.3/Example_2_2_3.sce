//Example 2.2.3 Page 21
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","off")    //hold on

for x=-5:0.25:5
    y1 = x;
    y2 = cos(x);
    plot2d(x,y1,style=-2)
    plot2d(x,y2,style=-2)
end
//plot2d(0.75,0.75, style=-3)        //To show that the fixed point is Unstable.
set(gca(),"grid",[2,5])
xtitle("Phase Potrait","x-axis","Y-axis, y=x, y=cos(x)")

disp ("OBSERVATIONS from the Graph :-")
disp("1. y=x and y=cos(x) intersects at exactly one point.")
disp("2. The fixed point is Unstable ")


//End of Example 2.2.3 Page 21.