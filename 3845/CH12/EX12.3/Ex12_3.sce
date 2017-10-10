//Example 12.3
Q=5;//Flow rate (L/min)
Q=Q/(10^3*60);//Flow rate (m^3/s)
r1=10*10^-3;//Radius of aorta (m)
A1=%pi*r1^2;//Cross-sectional area of aorta (m^2)
v1=Q/A1;//Average speed of blood in the aorta (m/s)
printf('a.Average speed of the blood in the aorta = %0.2f m/s',v1)
n1=1;//Number of aorta
r2=(8*10^-6)/2;//Radius of capillary (m)
A2=%pi*r2^2;//Cross-sectional area of capillary (m^2)
v2=0.33*10^-3;//Average speed of blood in the capillary (m/s)
n2=(n1*A1*v1)/(A2*v2);//Number of capillaries
printf('\nb.Number of capillaries = %0.1e',n2)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
