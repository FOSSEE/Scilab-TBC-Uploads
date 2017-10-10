//variable declaration
r1=1.258            //Atomic radius of BCC
r2=1.292            //Atomic radius of FCC

//calculations
a1=(4*r1)/sqrt(3)       //in BCC
b1=((a1)**3)*10**-30         //Unit cell volume
v1=(b1)/2                    //Volume occupied by one atom
a2=2*sqrt(2)*r2         //in FCC
b2=(a2)**3*10**-30                   //Unit cell volume
v2=(b2)/4                    //Volume occupied by one atom  
v_c=((v1)-(v2))*100/(v1)     //Volume Change in % 
d_c=((v1)-(v2))*100/(v2)     //Density Change in %

//Results
printf('a1=%0.3f Angstrom\n\n',(a1)) 
printf('Unit cell volume =a1**3 =%0.3f *10**-30 m**3\n',((b1)/10**-30))
printf('Volume occupied by one atom =%0.2f *10**-30 m**3\n',(v1/10**-30))
printf('a2=%0.2f\n Angstorm\n',(a2))
printf('Unit cell volume =a2**3 =%0.3f *10**-30 m**3\n',((b2)/10**-30))
printf('Volume occupied by one atom =%0.3f*10**-30 m**3\n',(v2/10**-30))
printf('Volume Change in percentage  =%0.3f\n',(v_c))
printf('Density Change in percentage =%0.3f\n',(d_c))
printf('Thus the increase of density or the decrease of volume is about 0.5 percentage")
