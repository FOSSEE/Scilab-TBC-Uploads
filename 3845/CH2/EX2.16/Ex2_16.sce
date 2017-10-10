//Example 2.16
y_0=0;//Initial position (m)
y=-1;//Position after certain time t (m)
t=0.45173;//Time (s)
v_0=0;//Initial velocity (m/s)
a=((y-y_0)-(v_0*t))/(1/2*t^2);//Acceleration (m/s^2)
g=-a;//Acceleration due to gravity (m/s^2)
printf('Acceleration due to gravity = %0.4f m/s^2',g)

///////////////////////////////////////
//To plot the graphs
t=[0 0.1 0.2 0.3 0.4 0.5];//Time (s)
y=[0 -0.049 -0.196 -0.441 -0.784 -1.225];//Position (m)
v=[0 -0.98 -1.96 -2.94 -3.92 -4.90];//Velocity (m/s)
a=repmat(-9.80,[1 6]);//Acceleration due to gravity (downwards) (m/s^2)


subplot(3,1,1)
A=gca();//Get the current axes
A.x_location= "origin";//Set x-axis position
A.data_bounds=[0,-1.4;0.6,0];//Set data bounds (as seen in the textbook plot)
A.margins=[0.125,0.125,0.4,0.125];//Adjusting the margins
plot(t,y,'-rd');//Plotting the graph with a red, solid line with diamond markers at data points
title('Position vs. Time for Falling Sphere','position',[0.2 0.75]);//Title and its position
xlabel('Time t (s)','position',[0.275 0.5]);//x-axis label and its position
ylabel('Position y (m)');//y-axis label

subplot(3,1,2)
A=gca();//Get the current axes
A.x_location= "origin";//Set x-axis position
A.data_bounds=[0,-6;0.6,0];//Set data bounds (as seen in the textbook plot)
A.margins=[0.125,0.125,0.4,0.125];//Adjusting the margins
plot(t,v,'-gd');//Plotting the graph with a green, solid line and diamond markers at data points
title('Velocity vs. Time for Falling Sphere','position',[0.2 3]);//Title and its position
xlabel('Time t (s)','position',[0.275 2]);//x-axis label and position
ylabel('Velocity v (m/s)');//y-axis label

subplot(3,1,3)
A=gca();//Get the current axes
A.x_location= "origin";//Set x-axis position
A.data_bounds=[0,-11;0.6,0];//Set data bounds 
A.margins=[0.125,0.125,0.4,0.1];//Adjusting the margins
plot(t,a,'-bd');//Plotting the graph with a blue, solid line and diamond markers at data points
title('Acceleration vs. Time for Falling Sphere','position',[0.19 5]);//Title and its position
xlabel('Time t (s)','position',[0.275 3]);//x-axis label and its position
ylabel('Acceleration a (m/s^2)');//y-axis label
///////////////////////////////////////////////////////
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
