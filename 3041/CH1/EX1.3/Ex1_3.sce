//Variable declaration
A=6.022*10**23   //avagadro's number
d=5.32*10**6     //density of Ge at 300k(g/m^3)
a=72.60          //atomic weight of Ge(g/g-atom)
e=1.6*10**-19    //electronic charge(C)
ni=2.4*10**19    //intrinsic concentration(electron-hole pairs/m^3)
un=0.39          //electron mobility(m^2/V.s)
up=0.19          //hole mobility(m^2/V.s)

//Calculations
//Part a
nA=A*d/a         //number of atoms(nA/m^3)using avagadro's law
x=nA/ni          //Germanium atoms/electron hole pair

//Part b
g=(un+up)*e*ni   //intrinsic conductivity(S/m)
r=1/g            //intrinsic resistivity(ohm.m)

//Results
printf ("the relative concentration of Ge and electron hole pairs is %.2e atoms/electron-hole pair",x)
printf ("the intrinsic resistivity of Ge is %.3f ohm.m",r)
