//Example 4.6.1 Page 110
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//After mathematical calculations they found:

//<V> = 0 for I<=Ic
//<V> = Ic*R*sqrt((I/Ic)^2 - 1) for I>Ic

//Let V/RIc = Y
//Let I/Ic = X

//so, we have
//Y = 0 for X<=1.
//Y = sqrt((X^2)-1) for X>1.

for X=0:0.05:3
    if X<=1 then
        Y=0;
        plot2d(X,Y,style=-4)
    else
        Y=sqrt((X^2)-1);
        plot2d(X,Y,style=-4)
    end
end

for X=0:0.2:3
    Y=X;
    plot2d(X,Y,style=-2)
end

a=get("current_axes");//get the handle of the newly created axes
a.data_bounds=[0,0;4,4];
xtitle("I-V Curve","X - Axis ( I / Ic )","Y - Axis ( V / RIc )")

//End of Example 4.6.1