////Variable Declaration
E = +1.51               //EMF for reduction of permangnet, V
E01 = -0.7618           //Zn2+  + 2e-  -------->  Zn (s)
E02 = +0.7996           //Ag+  + e-  -------->  Ag (s)
E03 = +1.6920           //Au+  + e-  -------->  Au (s)        

//Calculations
EZn = E - E01
EAg = E - E02
EAu = E - E03

[Er] = ({EZn,EAg,EAu})
//Results
printf("\n Cell potentials for Zn, Ag, Au are %4.2f V, %4.2f V, and %4.2f V",EZn, EAg,EAu)
printf("\n Zn has positive cell potential of %4.3f V and Can be oxidized bypermangnate ion",EZn)
printf("\n Ag has positive cell potential of %4.3f V and Can be oxidized bypermangnate ion",EAg)
printf("\n Au has positive cell potential of %4.3f V and Can be oxidized bypermangnate ion",EAu)
