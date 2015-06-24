//Example 3.4.1 Page 57
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","on")    //hold off

for (B=0.5:0.5:2)    //Capital "B" is denoting Beta.
    x=-3:0.1:3;
    y=x;            //To plot x=y line.
    
    figure;
    set(gca(),"auto_clear","off")    //hold on
    set(gca(),"grid",[2,5])
    plot2d(x,y,style=-4)
    plot2d(x,B*tanh(x),style=-1)
    xtitle("Intersection For different Beta values","x-Axis","y-Axis")
    
    
end
disp("From graph following points are clear:")
disp("1. For B<1, only orign is the fixed point.")
disp("2. For B>1, their are two new fixed points.")

//Stability
figure
set(gca(),"grid",[2,5])
for(x1 = -3:0.5:3)
    if(x1~=0)
    B = x1/tanh(x1);
    plot2d(B,x1,style=-4)
end

for(B=0:0.1:3);
    x1 = 0;
if(B<1)
    plot2d(B,x1,style=-4)    //Stable
else
    plot2d(B,x1,style=-2)    //Unstable
end  
xtitle("Bifurcation Diagram","Beta Values-Parameter","x*-Fix Points")
end
end
set(gca(),"auto_clear","on")
//If B<1 then only one fixed point.
//end of Example.