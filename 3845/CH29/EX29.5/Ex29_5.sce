//Example 29.5
h=6.63*10^-34;//Planck's constant (J.s)
lambda=500*10^-9;//Wavelength (m)
p=h/lambda;//Momentum of the photon (kg.m/s)
printf('a.Momentum of the visible photon = %0.2e kg.m/s',p)
m=9.11*10^-31;//Mass of an electron (kg)
v=p/m;//Velocity of the electron (m/s)
printf('\nb.Velocity of the electron = %0.1f m/s',v)
KE_e=(1/2)*m*v^2;//Kinetic energy of the electron (J)
KE_e=KE_e*1/(1.60*10^-19);//Kinetic energy of the electron (eV)
printf('\nc.Kinetic energy of the electron = %0.2e eV',KE_e)
hc=1240;//Planck's constant*speed of light (eV.nm)
E=hc/(lambda/10^-9);//Photon energy (eV)
printf('\n  Photon energy = %0.2f eV',E)
//To calulate the order of magnitude by which the energies differ
if E>KE_e
    big=E;
    small=KE_e;
    BIG='The photon energy';
elseif KE_e>E
    big=KE_e;
    small=E;
    BIG='The kinetic energy of the electron';
else
    printf('\nThe photon energy is equal to the kinetic energy of the electron') 
end
i=0;
while(small<big)
small=small*10;
i=i+1;
end
i=i-1;
printf('\n  %s is greater by an order of magnitude of about %d',BIG,i)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
