// Chapter 5_Non equilibrium excess carriers in semiconductors
//Caption_Relaxation time
//Ex_5//page 190
Nd=10^16    //donor concentration
e=1.6*(10^-19)   //electronic charge
mun=1200   //mobility
sig=e*mun*Nd
epsR=11.7  //dielectric constant for silicon
epso=8.85*(10^-14)
eps=epso*epsR     //permitivity of silicon
taud=eps/sig     //dielectric relaxation time constant
tau=taud*10^12
printf('The dielectric relaxation time constant for this semiconductor is %1.2f ps',tau)