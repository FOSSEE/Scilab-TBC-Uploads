//Example 3.2

//This code utilises dependency file 'Compute_Angle.sci'
exec Compute_Angle.sci;//Execute dependency file

//To find the position of the boat
subplot(2,1,1)
//To draw vector A 
x=0;
y=0;//x and y are the starting point coordinates
magnitude=27.5;
theta=66;
x_end=magnitude*cosd(theta);
y_end=magnitude*sind(theta);//x_end and y_end are the ending point coordinates
xarrows([x;x_end],[y;y_end])//Draw vector A
a=gca();//Get current axes
a.isoview='on';//Set the axes scales to be equal
a.x_location="origin";//Set x-axis at origin
a.y_location="origin";//Set y-axis at origin
a.axes_visible="on"//Make axes visible
a.data_bounds=[0,-20;30,40]//Set data bounds
a.auto_ticks='off';//Disable visibility of graduations
title('Position of the boat');
xlabel(a,'x','position',[28 -12])
ylabel(a,'y','position',[-10 35],'rotation',0)
xstring(7,10,'A');//Label vector A

//To draw vector B
x=x_end;
y=y_end;//x and y are the starting point coordinates
magnitude=30.0;
theta=-68;//See Figure 3.22
x_end=x+magnitude*cosd(theta);
y_end=y+magnitude*sind(theta);//x_end and y_end are end point coordinates
xarrows([x;x_end],[y;y_end])//Draw vector B
xstring(16,13.5,'B');//Label vector B

//To draw vector R
x=0;
y=0;//x and y are the starting point coordinates
xarrows([x;x_end],[y;y_end]);//Draw vector R
xstring(14.5,-12,'R');//Label vector R

r=sqrt(x_end^2+y_end^2);//Magnitude of vector R
printf('Distance of the boat from the starting point  = %0.1f m',r)
theta_r=Compute_Angle(x_end,y_end);//Direction of vector R
printf('\nDirection = %0.1f deg (measured anticlockwise from positive x-axis)',theta_r)
printf('\nOr\nDirection of resultant = %0.1f deg (measured clockwise from positive x-axis)',abs(360-theta_r))
/////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
subplot(2,1,2)
//To draw vector A 
x=0;
y=0;//x and y are the starting point coordinates
magnitude=27.5;
theta=66;
x_end=magnitude*cosd(theta);
y_end=magnitude*sind(theta);//x_end and y_end are the ending point coordinates
xarrows([x;x_end],[y;y_end])//Draw vector A
a=gca();//Get current axes
a.isoview='on';//Set the axes scales to be equal
a.x_location="origin";//Set x-axis at origin
a.y_location="origin";//Set y-axis at origin
a.axes_visible="on"//Make axes visible
a.data_bounds=[0,-5;30,60]//Set data bounds
a.auto_ticks='off';//Disable visibilty of graduations
title('Position of the dock');
xlabel(a,'x','position',[28 -11])
ylabel(a,'y','position',[-18 30],'rotation',0)
xstring(7,10,'A');//Label vector A

//To draw vector B
x=x_end;
y=y_end;//x and y are the starting point coordinates
magnitude=30.0;
theta=112;//See Figure 3.22
x_end=x+magnitude*cosd(theta);
y_end=y+magnitude*sind(theta);//x_end and y_end are end point coordinates
xarrows([x;x_end],[y;y_end])//Draw vector
xstring(8,33,'B');//Label vector B

//To draw vector R
x=0;
y=0;//x and y are the starting point coordinates
xarrows([x;x_end],[y;y_end]);//Draw vector R
xstring(-5,30,'R');//Label vector R


r=sqrt(x_end^2+y_end^2);//Magnitude of vector R
printf('\n\nDistance of the dock from the starting point  = %0.1f m',r)
theta_r=Compute_Angle(x_end,y_end);//Direction of vector R
printf('\nDirection = %0.1f deg (measured anticlockwise from positive x-axis)',theta_r)
printf('\nOr\nDirection of resultant = %0.1f deg (measured clockwise from positive x-axis)',abs(360-theta_r))
//Answers vary due to round errors, as well as the accuracy of measurement for the graphical method described in the textbook
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
