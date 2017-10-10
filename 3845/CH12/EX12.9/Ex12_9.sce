//Example 12.9
Q=0.120;//Flow rate (cm^3/s)
Q=Q*(10^-2)^3;//Flow rate (m^3/s)
r=0.150*10^-3;//Radius of needle (m)
eta=1*10^-3;//Viscosity of saline solution(N.s/m^2)
//Above information from Exercise 12.8
//////////////////////////////////////
A=%pi*r^2;//Cross-sectional area of needle
v=Q/A;//Fluid speed (m/s)
rho=1025;//Density of saline solution (kg/m^3)
N_R=(2*rho*v*r)/eta;//Reynolds number
printf('Reynolds number = %0.1f (flow in tube)',N_R)
if N_R<2000 disp('The flow is laminar')
elseif N_R>=2000&N_R<=3000 disp('The flow is unstable')
else disp('The flow is turbulent')
end
//Answer slightly varies with the textbook given answer
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
