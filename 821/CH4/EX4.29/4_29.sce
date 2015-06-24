T=300;//temperature in kelvin//
R=8.31*10^7;//Universal gas constant in ergs//
r=2*10^-5;//average radius of particles in cm//
h=4.15*10^-3;//Vertical seperation in cm//
p=1.21;//density of latex in gram per cm^3//
g=980;//gravity constant in dynes//
printf('Since the dispersion medium is water its density is p1=1.\nwhen the system equilibrated average number of colloidal particles seen in the field is halved so N0/N=2.\nthe required expression is derived based on kinetic energy of particles');
p1=1;//density of water//
L=log(2)*0.75*(R*T)/(%pi*g*h*(p-p1)*r^3);
printf('\nValue of Avagadro number is L=%f=6.037*10^23molecules per mol.',L);
