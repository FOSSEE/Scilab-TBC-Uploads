//Example 29.3
h=4.14*10^-15;//Planck's constant (eV.s)
c=3*10^8*10^9;//Speed of light (nm/s)
lambda=100;//Wavelength (nm)
E=h*c/lambda;//Photon energy (eV)
//The value h*c=1240eV.nm may also be used directly
printf('Vacuum UV photon energy = %0.1f eV',E)
//Discussion
E1=10;//Energy to ionize atom or molecule (lowest in the possible range 10eV to 1000eV) (eV), See Table 29.1
E2=10;//Binding energy of a tightly bound molecule (eV), See Table 29.1
E3=1;//Binding energy of a weakly bound molecule (eV), See Table 29.1
printf('\nDiscussion:')
if E>E1 
    printf('\nThe photon energy might be sufficient to ionize an atom or molecule')
end
if E>E2
    printf('\nThe photon energy is sufficient to break apart %0.0f tightly bound molecule(s)',E/E2)
end
if E>E3
    printf('\nThe photon energy is sufficient to break apart %0.0f weakly bound molecule(s)',E/E3 )
end
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
