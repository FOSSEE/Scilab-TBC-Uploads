// chapter 7 , Example7.22 , pg 218
Ix=200   //current  (in A)
Bz=1.5   //magnetic field   (in T)
d=10^-3   //width of slab   (in m)
p=8.4*10^28    //concentration of electrons (in m^-3)
e=1.6*10^-19    // charge   (in C)
VH=(Bz*Ix)/(p*e*d)    //Hall  voltage
printf("Hall voltage(in V)=")
disp(VH)
