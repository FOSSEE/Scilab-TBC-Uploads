//Example 4.3.1 Page 97
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

// Theta(dot) = f = w - a*sin(Theta)
//a>w

//Lets take w=2, a=5;

for Theta=-%pi:0.1:%pi 
    f=2 - (5*sin(Theta));        //f = w-a*sin(Theta)
    plot2d(Theta,f,style=-2)
end

///////////////// Figure Characteristics //////////////////////////
    set(gca(),"grid",[2,5])        //Grid on

for Theta=-2*%pi:0.4:2*%pi
    plot2d(Theta,0,style=-1)        //Just to plot X-Axis.
    plot2d(0,Theta,style=-1)        //Just to plot Y-Axis.
end
plot2d(0.41,0,style=-4)            //Just to Show that the Fixed point is Stable.
plot2d(2.75,0,style=-3)            //Just to Show that the Fixed point is UnStable.
plot2d(1.5,0,style=-13)            //Just to Show the Flow.
plot2d(-2,0,style=-12)            //Just to Show the Flow.
plot2d(3.2,0,style=-12)            //Just to Show the Flow.
    xtitle("Theta(dot) = w - a*sin(Theta), for a > w","X-Axis","Y-Axis")
//////////////////////////////////////////////////////////////////

exec circle.sci        //function to draw circle is executed
figure(1)              //Graphic Window(1)
circle([0 0],4,50)     //Circle is drawn with (0,0)as center, radius=4.

///////////////// figure Properties /////////////////////////
a=get("current_axes");//get the handle of the newly created axes
a.data_bounds=[-5,-5;5,5];
set(gca(),"grid",[2,5])
plot2d(0,4,style=-12)            //Showing Vector Fields on Circle
plot2d(4,0,style=-6)            //Showing Vector Fields on Circle
plot2d(-3,2.6,style=-3)            //Showing Unstable-Fixed Point with plus inside a circle
plot2d(3,2.6,style=-4)            //Showing Stable Fixed Point with diamond
xtitle("Vector Field on Circle for a > w","X - Axis","Y - Axis")
/////////////////////////////////////////////////////////////

//End of Example_4_3_1.
