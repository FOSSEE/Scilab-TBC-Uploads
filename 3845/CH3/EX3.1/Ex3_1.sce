//Example 3.1

//This code utilises dependency file 'Compute_Angle.sci'
exec Compute_Angle.sci;//Execute dependency file

//To draw vector A 
x=0;
y=0;//x and y are the starting point coordinates
magnitude=25;
theta=49;
x_end=magnitude*cosd(theta);
y_end=magnitude*sind(theta);//x_end and y_end are the ending point coordinates
xarrows([x;x_end],[y;y_end])//Draw the arrow
a=gca();//Get current axes
a.isoview='on';//Set the axes scales to be equal
a.x_location="origin";//Set x-axis at origin
a.axes_visible="on"//Make axes visible
a.data_bounds=[0,-10;60,25]//Set data bounds
xlabel(a,'x','position',[57 -5])
ylabel(a,'y','position',[-5 23],'rotation',0)
xstring(10,10,'A');//Label vector A

//To draw vector B
x=x_end;
y=y_end;//x and y are the starting point coordinates
magnitude=23;
theta=15;
x_end=x+magnitude*cosd(theta);
y_end=y+magnitude*sind(theta);//x_end and y_end are end point coordinates
xarrows([x;x_end],[y;y_end])//Draw the arrow
xstring(30,20.5,'B');//Label vector B

//To draw vector C
x=x_end;
y=y_end;//x and y are the starting point coordinates
magnitude=32;
theta=-68;//The angle is negative since it is measured clockwise from the reference axis
x_end=x+magnitude*cosd(theta);
y_end=y+magnitude*sind(theta);//x_end and y_end are end point coordinates
xarrows([x;x_end],[y;y_end]);//Draw the arrow
xstring(44.5,10,'C');//Label vector C

//To draw vector R
x=0;
y=0;//x and y are the starting point coordinates
xarrows([x;x_end],[y;y_end]);//Draw the arrow
xstring(25,-4.5,'R');//Label vector R

r=sqrt(x_end^2+y_end^2);//Magnitude of vector R
printf('Resultant displacement = %0.1f m',r)
theta_r=Compute_Angle(x_end,y_end);//Direction of vector R
printf('\nDirection = %0.1f deg (measured anticlockwise from positive x-axis)',theta_r)
printf('\nOr\nDirection = %0.1f deg (measured clockwise from positive x-axis)',abs(360-theta_r))
//Answers vary due to round errors, as well as the accuracy of measurement for the graphical method described in the textbook
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
