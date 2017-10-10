
//Variable declaration
epsilon0=8.85*10**-12;
A=6.45*10**-4;     //area(m**2)
d=2*10**-3;     //seperation(m)
V=12;    //voltage(V)
epsilonr=5;

//Calculation
P=epsilon0*(epsilonr-1)*V/d;     //polarization(C m)

//Result
printf('polarization is %0.3f   *10**-9 C m  \n',P*10**9)