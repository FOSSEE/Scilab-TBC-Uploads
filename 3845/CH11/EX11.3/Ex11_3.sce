//Example 11.3
h=40;//Average depth (m)
rho=1*10^3;//Density of water (kg/m^3), See Table 11.1
g=9.80;//Acceleration due to gravity (m/s^2)
P=h*rho*g;//Pressure (Pa)
printf('a.Average pressure on the dam = %0.0f kPa',P/1000)
w=500;//Width of dam (m)
d=80;//Depth of dam (m)
A=w*d;//Area of dam (m^2)
F=P*A;//Force (N)
printf('\nb.Force exerted against the dam = %0.2e N',F)
//Discussion
W=1.96*10^13;//Weight of water in the dam (N)
printf('\nDiscussion:\nThe force exerted on the dam is %0.4f%% of the weight of water in the dam',F/W*100)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
