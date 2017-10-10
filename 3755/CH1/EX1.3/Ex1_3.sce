clear
//
//
//

//Variable declaration    
N=6.02*10^26;           //Avagadro Number
e=1.6*10^-19;      //charge(coulomb)
x=9*10^9;          
r0=0.324*10^-9;    //equilibrium distance(m)
A=1.748;      //madelung constant
n=9.5;       //repulsive exponent value

//Calculations
U0=(A*e*x/r0)*(1-1/n);     
U=(U0)*N*e*10^-3;      //binding energy(kJ/kmol)


//Result
printf("\n binding energy is %0.0f *10^3 kJ/kmol",U/10^3)
printf("\n answer in the book varies due to rounding off errors")
