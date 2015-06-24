//Example 2.2.2 Page 20
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","on")    //hold off

//As Resistance(R), Capacitance(C) and Voltage(V(0)) are constants so 
//Let R=4 , V(0)=10 , RC = 0.5 (Thus, C = 0.125)to plot Q(dot) v/s Q.
// Thus, V(0)/R = 2.5
//Q(dot) = f(Q) = 2.5 - Q/0.5 => Q(dot) = f(Q) = 2.5 - 2*Q.

set(gca(),"auto_clear","off")    //hold on
for Q = -2:0.25:2
    y = 2.5 - 2*Q ;       //y=Q(dot)=f(Q)
    plot2d(Q,y,style=-2)
end
plot2d(1.25,0,style=-4)        //Just to depict Stable Fixed Point 

xtitle("Stability Diagram","Q","Q(dot)")
set(gca(),"grid",[2,5])        //Grid on

disp("From the Figure of Q(dot) v/s Q => we can find the Fixed Point (where Q(dot) crosses X-Axis)")

disp("Put Q(dot)=0 => Q* = CV(0),  Q* = CV(0) = 1.25 in our case.")
disp("From the figure itself it is clear that the Fixed Point is Stable.")


// Now Second Part of the question.
//From our knowledge of Electronics and Twelth Class we know that :-
//Charging of Capacitor is described as Exponentially increasing with time. (-exp(-t))
figure            //To get a new Graphic Window

for t=0:0.2:3
    Q = 1-exp(-t);        //To show exponential increasing nature of graph starting from Q=0.
    plot2d(t,Q,style=-2)
end
set(gca(),"grid",[2,5])
xtitle("Charging of Capacitor","x-axis (Time)","Q(t)-charge")
//End of Example 2.2.2

    


