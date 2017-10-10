//variable declaration 
I=5.14;                    //Ionization energy
A=3.65;                    //Electron Affinity
e=(1.6*10**-19);
E=8.85*10**-12; 
r=236*10**-12;

//Calculations
E_c=I-A                        //Energy required
C=-(e**2/(4*%pi*E*r*e))    //Potentential energy in eV
BE=-(E_c+C)                    //Bond Energy
//Result
printf('Energy required= %0.2f eV\n",E_c)
printf('Energy required =%0.1f eV\n",C)
printf('Bond Energy =%0.2f eV",BE)
