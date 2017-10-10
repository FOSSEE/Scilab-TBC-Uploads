
//Variable declaration
n=1;
e=1.6*10**-19;  
m=9.1*10**-31;    //mass(kg)
h=6.63*10**-34;    //planck's constant
L=1*10**-10;       //width(m)

//Calculation
E1=n**2*h**2/(8*m*e*L**2);      //energy value in ground state(eV)
E2=4*E1;      //energy value in 1st state(eV)
E3=9*E1;      //energy value in 2nd state(eV)

//Result
printf('energy value in ground state is %0.4f eV",(E1))
printf('\nenergy value in 1st state is %0.2f eV",(E2))
printf('\nenergy value in 2nd state is %0.4f eV",(E3))
