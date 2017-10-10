//Example 11.6
F1=500;//Force on master cylinder (N)
r1=(0.500*10^-2)/2;//Master cylinder radius (m)
A1=%pi*r1^2;//Cross-sectional area of master cylinder (m^2)
r2=(2.50*10^-2)/2;//Slave cylinder radius (m)
A2=%pi*r2^2;//Cross-sectional area of slave cylinder (m^2)
F2=A2*F1/A1;//Force on slave cylinder (N)
printf('Force on slave cylinder = %0.2e N',F2)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
