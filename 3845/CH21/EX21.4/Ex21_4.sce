//Example 21.4
emf=12;//Emf of battery (V)
r=0.1;//Internal resistance (ohm)
R_load=10;//Load resistance (ohm)
I=emf/(R_load+r);//Current (A)
V=emf-I*r;//Terminal voltage (V)
printf('a.Terminal voltage = %0.1f V',V)

R_load=0.5;//Load resistance (ohm)
I=emf/(R_load+r);//Current (A)
V=emf-I*r;//Terminal voltage (V)
printf('\nb.Terminal voltage = %0.1f V',V)

P_load=I^2*R_load;//Power dissipated (W)
printf('\nc.Power dissipated by the load = %0.2e W',P_load)

r=0.5;//Internal resistance (ohm)
I=emf/(R_load+r);//Current (A)
printf('\nd.Current = %0.1f A',I)
V=emf-I*r;//Terminal voltage (V)
printf('\n  Terminal voltage = %0.2f V',V)
P_load=I^2*R_load;//Power dissipated (W)
printf('\n  Power dissipated by the load = %0.1f W',P_load)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
