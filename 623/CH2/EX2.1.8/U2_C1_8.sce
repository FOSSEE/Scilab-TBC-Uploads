//variable initialization
lembda_c=0.024                                                                  //Compton wavelength of electron (Å)
lembda=1                                                                        //Wavelength of X-rays (Å)
Theta1=(60*%pi)/180;                                                            //angle (radian)
Theta2=(90*%pi)/180;                                                            //angle (radian)
Theta3=(180*%pi)/180;                                                           //angle (radian)
ch=12400                                                                        //constant (eV Å)

//(a) Compton shift
shift1=lembda_c*(1-cos(Theta1));                                                //Compton shift (Å)
shift2=lembda_c*(1-cos(Theta2));                                                //Compton shift (Å)
shift3=lembda_c*(1-cos(Theta3));                                                //Compton shift (Å)

//(b) Kinetic energy imparted to the recoil electron
T1=(ch*shift1)/(lembda*(lembda+shift1));                                        //Kinetic energy imparted to the electron (eV)
T2=(ch*shift2)/(lembda*(lembda+shift2));                                        //Kinetic energy imparted to the electron (eV)
T3=(ch*shift3)/(lembda*(lembda+shift3));                                        //Kinetic energy imparted to the electron (eV)

printf("\n(a) Compton shift:\n\t (i) %.3f Å\n\t (ii) %.3f Å\n\t (iii) %.3f Å\n(b) Kinetic energy imparted to the recoil electron:\n\t (i) %.0f eV\n\t (ii) %.0f eV\n\t (iii) %.0f eV",shift1,shift2,shift3,T1,T2,T3);
