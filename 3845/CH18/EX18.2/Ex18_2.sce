//Example 18.2
Q=2.00*10^-9;//Charge (C)
k=8.99*10^9;//Coulomb's constant (N.m^2/C^2)
r=5*10^-3;//Distance (m)
E=k*Q/r^2;//Electric field strength (N/C)
printf('Electric field strength = %0.2e N/C',E)
if E>0
    printf('\nDirection of electric field points away from the charge')
else
    printf('\nDirection of electric field points towards the charge')
end
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
