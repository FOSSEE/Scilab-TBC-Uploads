//Example 12.2
r1=0.9*10^-2;//Radius of garden hose (m)
A1=%pi*r1^2;//Cross-sectional area of hose (m^2)
Q=0.5;//Flow rate (L/s)
Q=Q/10^3;//Flow rate (m^3/s)
v1=Q/A1;//Speed of water in the hose (m/s)
printf('a.Speed of water in the hose = %0.2f m/s',v1)
r2=0.25*10^-2;//Radius of nozzle (m)
A2=%pi*r2^2;//Cross-sectional area of nozzle (m^2)
v2=A1*v1/A2;//Speed of water in the nozzle from continuity equation (m/s)
printf('\nb.Speed of water in the nozzle = %0.1f m/s',v2)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
