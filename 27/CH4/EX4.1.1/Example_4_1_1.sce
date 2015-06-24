//Example 4.1.1 Page 94
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//Representing theta by O --> not zero it is alphabet "O"
//Given :- O(dot) = f(O) = sinO.

O1 = 0;    //first Fix Point.
O2 = %pi    //Second Fix Point.

//f(double dot) = O(double dot) = cosO.


//////////////////// Computations Started /////////////////////////////

f1 = cos(O1)
f2 = cos(O2)

if f1 > 0 then
    disp("Zero is the Unstable Fixed Point.")
else
    disp("Zero is the Stable Fixed Point.")
end

if f2>0 then
    disp("Pi is the Unstable Fixed Point.")
else
    disp("Pi is the Stable Fixed Point.")
end

/////////////////////////////////////////////////////////////////////

figure(0)
for O = 0:0.1:2*%pi
    f = sin(O);
    plot2d(O,f,style=-2)
end

//////////////// Figure(0) Properties //////////////////////
a=get("current_axes");//get the handle of the newly created axes
a.data_bounds=[-1,-2;7,2];
set(gca(),"grid",[2,5])
plot2d(0,0,style=-3)            //Showing Unstable-Fixed Point with plus inside a circle
plot2d(2*%pi,0,style=-4)        //Showing Stable Fixed Point with diamond
xtitle("Sine Wave on line","X - Axis","Y - Axis")
//////////////////////////////////////////////////////////


exec circle.sci        //function to draw circle is executed
figure(1)              //Graphic Window(1)
circle([0 0],4,50)     //Circle is drawn with (0,0)as center, radius=4.

///////////////// figure Properties /////////////////////////
a=get("current_axes");//get the handle of the newly created axes
a.data_bounds=[-5,-5;5,5];
set(gca(),"grid",[2,5])
plot2d(0,4,style=-13)            //Showing Counter-Clockwise Direction
plot2d(0,-4,style=-13)            //Showing Counter-Clockwise Direction
plot2d(4,0,style=-3)            //Showing Unstable-Fixed Point with plus inside a circle
plot2d(-4,0,style=-4)            //Showing Stable Fixed Point with diamond
xtitle("Vector Field on Circle","X - Axis","Y - Axis")
/////////////////////////////////////////////////////////////

//End of Example_4_1_1.