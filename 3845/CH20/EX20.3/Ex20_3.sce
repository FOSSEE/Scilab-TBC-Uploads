//Example 20.3
n_A=6.02*10^23;//Avagadro's number (atoms/mol)
atomic_mass=63.54;//Atomic mass of copper (g/mol)
rho=8.80*10^3;//Density of copper (kg/m^3)
n=1*n_A*(1/atomic_mass)*1000*rho;//Free electron density (e-/m^3)
//n=(1e-/atom)*(6.02*10^23atoms/mol)*(1mol/63.54g)*(1000g/kg)*(8.80*10^3kg/1m^3)
r=(2.053/2)*10^-3;//Radius of copper wire (m)
A=%pi*r^2;//Cross-sectional area of wire (m^2)
I=20;//Current (A)
q=-1.60*10^-19;//Charge of an electron (C)
v_d=I/(n*q*A);//Drift velocity (m/s)
printf('Drift velocity of electrons = %0.2e m/s',v_d)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

