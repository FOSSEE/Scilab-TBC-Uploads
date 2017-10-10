
//Variable declaration
N=1.6*10**20;     //number of molecules(/m**3)
T=300;     //temperature(K)
E=5*10**5;    //electric field(V/m)
x=0.25*10**-9;   //separation(m)
Kb=1.381*10**-23;    //boltzmann constant
e=1.6*10**-19;  

//Calculation
Pd=N*e**2*x**2*E/(3*Kb*T);      //orientational polarization

//Result
printf('orientational polarization is %0.3f *10**-11 C m    \n',(Pd*10**11))