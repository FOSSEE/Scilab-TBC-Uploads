
//Variable declaration
L=5;    //length(m)
R=0.06;    //resistance(ohm)
I=15;      //current(A)
ne=3;    //number of electrons
rho=2.7*10**-8;   //resistivity(ohm m)
w=26.98;   //atomic weight
D=2.7*10**3;   //density(kg/m**3)
Na=6.025*10**26;   //avagadro number(per k mol)
e=1.6*10**-19; 
//Calculation
n=ne*Na*D/w;       //number of conduction electrons(per m**3)
mew=1/(n*e*rho);    //mobility of electrons(m**2/Vs)
vd=I*R/(L*rho*n*e);     //drift velocity(m/s)

//Result
printf('number of conduction electrons is %0.3f  *10**29 per m**3   \n',(n/10**29))
printf('mobility of electrons is %0.3f   m**2/Vs  \n',(mew))
printf('drift velocity is %0.3f    *10**-4 m/s\n',(vd*10**4))
