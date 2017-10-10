//Example19.3//

//The current indicates a flow rate of electrons
a=10*10^-3;//C/s // coulomb per second
b=1;//electron
c=0.16*10^-18;//C //1 Coulomb of charge
I=a*b/c
mprintf("I = %e electrons/s",I)

//As the oxidation of each iron atom generates two electrons
d=1;//reaction
e=2;//electrons
r=I*d/e
mprintf("\nr = %e reaction/s",r)
