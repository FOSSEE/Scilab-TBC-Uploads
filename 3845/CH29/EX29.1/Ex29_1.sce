//Example 29.1
lambda=420*10^-9;//Wavelength of violet light (m)
c=3*10^8;//Speed of light (m/s)
h=6.63*10^-34;//Planck's constant (J.s)
f=c/lambda;//Frequency (Hz)
E=h*f;//Energy (J)
printf('a.Photon energy = %0.2e J',E)
E=E*1/(1.6*10^-19);//Energy (eV)
printf('\n  Photon energy = %0.2f eV',E)
BE=2.71;//Binding energy (eV)
KE_e=E-BE;//Maximum kinetic energy of electrons (eV)
printf('\nb.Maximum kinetic energy of electrons = %0.3f eV',KE_e)
//Answer varies from the textbook for (b.)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
