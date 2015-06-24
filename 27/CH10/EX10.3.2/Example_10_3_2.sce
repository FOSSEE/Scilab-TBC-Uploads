//Example 10.3.2 Page 358
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz
clear;
clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//Taking r=3.5 such that r>3 as given in book.;
r=3.5;
for x=0:0.01:1
    f2x=(((r^2)*x)-(r*x)^2)*(1-r*x+r*(x^2));        //f2x=second-iterate map.
    plot2d(x,f2x,style=-2)
    y=x;            //to plot y=x line.
    plot2d(x,y,style=-4)
end
xtitle("Second Iterate Map","x-Axis ( x )","y-Axis ( f ^ 2 (x) )")