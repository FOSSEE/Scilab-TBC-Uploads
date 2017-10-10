
//Variable declaration
A=10*10**-6;     //area(m**2)
ne=1;    //number of electrons
I=100;    //current(amperes)
w=63.5;   //atomic weight
e=1.6*10**-19;     //charge(c)
D=8.92*10**3;   //density(kg/m**3)
Na=6.02*10**26;   //avagadro number(per k mol)

//Calculation
n=ne*Na*D/w;
J=I/A;
vd=J/(n*e);      //drift velocity of free electrons(m/s)

//Result
printf('drift velocity of free electrons is %0.3f   *10**-3 m/s  \n',(vd*10**3))