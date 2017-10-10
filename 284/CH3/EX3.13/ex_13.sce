// Chapter 3_The Semiconductor in Equilibrium
//Caption_Position of Fermi Energy level
//Ex_14//page 121
T=300   //temperature in kelvin
Ef=0.20;
kT=0.0259
ni=1.5*(10^10)  //intrinsic carrier concentration
Efa=3*kT    //Ef-Ea=3kT
Eav=0.045
Efif=Ef/2-(Eav)-(Efa)    //The position of fermi level at the maximum doping
Na=exp(Efif/kT)*ni
printf('Maximum doping is %3.2f d per cm cube',Na)