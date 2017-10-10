//Example 18.4
k=8.99*10^9;//Coulomb's constant (N.m^2/C^2)
q1=5*10^-9;//Charge 1 (C)
q2=10*10^-9;//Charge 2 (C)
r1=2*10^-2;//Distance of charge 1 from the origin (m)
r2=4*10^-2;//Distance of charge 2 from the origin (m)
E1=k*q1/r1^2;//Electric field strength at origin due to q1 (N/C)
E2=k*q2/r2^2;//Electric field strength at origin due to q2 (N/C)
E_tot=sqrt(E1^2+E2^2);//Total electric field strength (N/C)
printf('Magnitude of total electric field = %0.2e N/C',E_tot)
theta=atand(E1/E2);//Direction (deg)
printf('\nDirection of total electric field = %0.1f degrees',theta)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
