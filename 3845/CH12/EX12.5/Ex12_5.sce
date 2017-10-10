//Example 12.5
r1=(6.40*10^-2)/2;//Radius of the hose (m)
A1=%pi*r1^2;//Cross-sectional area of the hose (m^2)
r2=(3*10^-2)/2;//Radius of the nozzle (m)
A2=%pi*r2^2;//Cross-sectional area of the nozzle (m^2)
Q=40;//Flow rate (L/s)
Q=Q/10^3;//Flow rate (m^3/s)
v1=Q/A1;//Speed of water in hose (m/s)
v2=Q/A2;//Speed of water in nozzle (m/s)
rho=1000;//Density of water (kg/m^3)
g=9.80;//Acceleration due to gravity (m/s^2)
h2=10;//Height above ground (m)
P1=1.62*10^6;//Gauge pressure inside the hose at the start (N/m^2)
//Taking initial height h1=0 (m)
P2=P1+1/2*rho*(v1^2-v2^2)-(rho*g*h2);//Nozzle pressure from Bernoulli's equation (N/m^2)
printf('(Gauge) Pressure in the nozzle = %0.1f N/m^2',P2)
//The answer provided in the textbook is wrong
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
