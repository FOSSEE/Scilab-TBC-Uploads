//Example 10.6.1 Page 369
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz
clear;
clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//Sine Map
r=0.5;
for xn=0:0.01:1
    xn_one=r*sin(%pi*xn);
    plot2d(xn,xn_one,style=-3)
end
