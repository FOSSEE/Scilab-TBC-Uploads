//Example 17.10//

//(a)
Eg=1.107;//eV //bands gap
h=(0.663*10^-33);//J s //Planck's constant
c=(3*10^8);//m/s //speed of light
q=0.16*10^-18;//J/eV // 1 Coulomb of charge
a=10^9;//nm/m //given
l=((h*c)/(Eg*q))*a
mprintf("  Answer calculated in the texbook is wrong")
mprintf("\nl = %i nm",l)
//(b)
Eg1=0.049;//eV// band gap
l1=((h*c)/(Eg1*q))*a
mprintf("\nl1 = %i nm",l1)

