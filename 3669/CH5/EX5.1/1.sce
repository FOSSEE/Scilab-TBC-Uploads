
//Variable declaration
fE=1/100;    //probability(%)
E_EF=0.5;    //fermi energy(eV)
Kb=1.38*10**-23;    //boltzmann constant
e=6.24*10**18;      //conversion faction from J to eV

//Calculation
x=E_EF/(Kb*e);
y=log(1/fE);
T=x/y;        //temperature(K)

//Result
printf('temperature is %0.3f    K \n',(T))
printf('answer varies due to approximating off errors\n')