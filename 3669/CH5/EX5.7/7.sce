
//Variable declaration
ne=1;    //number of electrons
rho=1.721*10**-8;   //resistivity(ohm m)
w=63.54;   //atomic weight
e=1.6*10**-19;     //charge(c)
D=8.95*10**3;   //density(kg/m**3)
Na=6.025*10**26;   //avagadro number(per k mol)

//Calculation
n=ne*Na*D/w;
mew=1/(n*e*rho);     //mobility of electrons(m**2/Vs)

//Result
printf('mobility of electrons is %0.3f   m**2/Vs  \n',(mew))
printf('answer in the book is wrong\n')