//Example 25.10
f=40;//Focal length (cm)
R=2*f;//Radius of curvature (cm)
printf('a.Radius of curvature = %0.1f cm',R)
L=1;//Length (m)
A=(1/4)*2*%pi*(R*10^-2)*L;//Area of the concave mirror of length L (m^2)
i=900;//Insolation (W/m^2)
Q=i*A;//Insolation per meter length of pipe (W)
printf('\nb.Amount of sunlight concentrated onto the pipe per meter = %0.1f W',Q)
rho=8*10^2;//Density of mineral oil (kg/m^3)
d=2*10^-2;//Pipe diameter (m)
V=%pi*(d/2)^2*1;//Volume of 1m long section of pipe (m^3)
m=rho*V;//Mass of mineral oil (kg)
c=1670;//Specific heat of mineral oil (J/kg.C)
delta_T=Q*60/(m*c);//Increase in temperature over 1 minute (C)
printf('\nc.Increase in temperature = %0.1f C',delta_T)
//Answers vary due to round off errors
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
