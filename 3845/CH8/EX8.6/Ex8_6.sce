//Example 8.6
m1=0.350;//Mass of cart 1 and spring (kg)
m2=0.500;//Mass of cart 2 (kg)
v1=2.00;//Initial velocity of cart 1 (m/s)
v2=-0.500;//Initial velocity of cart 2 (m/s)
v1_final=-4.00;//Final velocity of cart 1 (m/s)
v2_final=(m1*v1+m2*v2-m1*v1_final)/m2;//Final velocity of cart 2 (m/s)
printf('a.Final velocity of cart 2 = %0.2f m/s',v2_final)
KE_int1=(1/2*m1*v1^2)+(1/2*m2*v2^2);//Internal kinetic energy before collision (J)
KE_int2=(1/2*m1*v1_final^2)+(1/2*m2*v2_final^2);//Internal kinetic energy after collision (J)
delta_KE=KE_int2-KE_int1;//Change in internal kinetic energy (J)
printf('\nb.Energy released by the spring = %0.2f J',delta_KE)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

