//example-21.2
//page no-621
//given
//relative permeability of superalloy
mur=200000
mu0=4*(%pi)*10^-7  //henry/m
//intensity of magnetisation
M=6000  //A/m
//magnetic field is given by
H=M/(mur-1)  //A/m
//strength of magnet
B=mu0*mur*H  //tesla
printf ("the strength of magnet is %f T",B)
