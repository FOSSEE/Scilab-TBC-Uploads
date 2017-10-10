//Example 19.8
eps_0=8.85*10^-12;//Permittivity of free space (F/m)
A=1;//Area of metal plates (m^2)
d=1*10^-3;//Distance between plates (m)
C=eps_0*A/d;//Capacitance (F)
printf('a.Capacitance = %0.2f nF',C/10^-9)
V=3*10^3;//Applied voltage (V)
Q=C*V;//Stored charge  (C)
printf('\nb.Charge stored in the capacitor = %0.2f microC',Q/10^-6)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
