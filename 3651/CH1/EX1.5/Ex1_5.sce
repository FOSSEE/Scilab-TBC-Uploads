//variable declaration
I=5.14;                    //Ionization energy
A=3.65;                    //Electron Affinity
e=(1.6*10**-19);
E=8.85*10**-12; 
//calculations
E_c=I-A                        //Energy required
r=e**2/(4*%pi*E*E_c*e)     //Distance of separation

//Result
printf('Energy required=%0.2f eV \n",E_c)
printf('Distance of separation =%0.2f Angstrom",r/10**-10)
