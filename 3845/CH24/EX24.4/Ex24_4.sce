//Example 24.4
P=1*10^3;//Power (W)
A=0.30*0.40;//Area (m^2)
I_ave=P/A;//Intensity (W/m^2)
printf('a.Intensity = %0.2e W/m^2',I_ave)
I_0=2*I_ave;//Peak intensity (W/m^2)
printf('\n  Peak Intensity = %0.2e W/m^2',I_0)
c=3*10^8;//Speed of light (m/s)
eps_0=8.85*10^-12;//Permittivity of free space (C^2/N.m^2)
E_0=sqrt(2*I_ave/(c*eps_0));//Peak electric field strength (V/m)
printf('\nb.Peak electric field strength = %0.2e V/m',E_0)
B_0=E_0/c;//Peak magnetic field strength (T)
printf('\nc.Peak magnetic field strength = %0.2e T',B_0)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
