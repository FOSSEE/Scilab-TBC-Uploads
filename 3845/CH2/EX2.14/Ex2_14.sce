//Example 2.14
y_0=0;//Initial position (m)
v_0=13;//Initial velocity (m/s)
g=9.80;//Acceleration due to gravity (m/s^2)
a=-g;//Acceleration (it is negative as the rock is thrown upwards), (m/s^2)
table=repmat(' ',[3 4]);//Matrix of strings to store table values
for t=1:1:3
table(t,1)=sprintf('%0.2f',t);//Time (s)
table(t,2)=sprintf('%0.2f',y_0+v_0*t+(1/2)*a*t^2);//Position at time t (m)
table(t,3)=sprintf('%0.2f',v_0+a*t);//Velocity at time t (m/s)
table(t,4)=sprintf('%0.2f',a);//Acceleration at time t (m/s^2)
end
table_header=['Time,t' 'Position,y' 'Velocity,v' 'Acceleration,a';'s' 'm' 'm/s' 'm/s^2'];
table1=string(table);//Convert to matrix of strings
TABLE=[table_header;table1];
disp(TABLE)
///////////////////////////////////////
//To accomodate data points for t=0 and extra data points for the plot of Position vs. Time 
time=[0;strtod(table(:,1))];//strtod() converts string to double
velocity=[13;strtod(table(:,3))];//strtod() converts string to double
acceleration=[a;strtod(table(:,4))];//strtod() converts string to double
position=ones(7,1);
time2=ones(7,1);
i=1;
for t=0:0.5:3
    position(i,1)=y_0+v_0*t+(1/2)*a*t^2;//Position at time t (m)
    time2(i,1)=t;
    i=i+1;
end
///////////////////////////////////////
//To plot the graphs
subplot(3,1,1)
a=gca();//Get the current axes
a.x_location= "origin";//Set x-axis position
a.data_bounds=[0,-6;4,10];//Set data bounds (as seen in the textbook plot)
plot(time2,position,'-rd');//Plotting the graph with a red, solid line with diamond markers at data points
title('Position vs. Time','position',[1.7 9]);//Title and its position
xlabel('Time (s)');//x-axis label
ylabel('Vertical Position (m)');//y-axis label

subplot(3,1,2)
a=gca();//Get the current axes
a.x_location= "origin";//Set x-axis position
a.data_bounds=[0,-20;4,15];//Set data bounds (as seen in the textbook plot)
plot(time,velocity,'-gd');//Plotting the graph with a green, solid line with diamond markers at data points
title('Velocity vs. Time','position',[1.7 12]);//Title and its position
xlabel('Time (s)','position', [1.8 -18]);//x-axis label and its position
ylabel('Velocity (m/s)');//y-axis label

subplot(3,1,3)
a=gca();//Get the current axes
a.x_location= "origin";//Set x-axis position
a.data_bounds=[0,-12;4,0];//Set data bounds (as seen in the textbook plot)
plot(time,acceleration,'-bd');//Plotting the curve with a blue, solid line with diamond markers at data points
title('Acceleration vs. Time','position',[1.6 2]);//Title and its position
xlabel('Time (s)','position',[1.8 -13]);//x-axis label and its position
ylabel('Acceleration (m/s^2)');//y-axis label
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
