clc
pathname=get_absolute_file_path('47.sce')
filename=pathname+filesep()+'47.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\47.txt')
disp("The water supply reservoir as shown in given figure has an average depth of 20m, a surface area of 20km^2, ans an outlet whose centerline is 15m below the water surface.If the otflow diameter is 1 m, what is the outflow and its associated velocity?What would be the drwa down during one week and one day periods?")
disp("Solution:")
V2=sqrt(2*g*z1)//Velocity of liquid from the pipe
Q=V2*%pi*d2^2/4//Discharge per sec
disp("m^3/s",Q,"Discharge")
v1=Q*24*3600//Discharge per day
v2=Q*7*24*3600//Dicharge per week
v=A*H//Original volume of liquid
disp("Hence drop down in level for one day and one week are:")
h1=v1/v*H//draw down of one day
h2=v2/v*H//draw down of one week
disp("m",h1,"draw down of one day")
disp("m",h2,"draw down of one week")
diary(0)
