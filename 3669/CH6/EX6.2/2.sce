
//Variable declaration
epsilon0=8.85*10**-12;
A=100*10**-4;     //area(m**2)
d=1*10**-2;     //seperation(m)
V=100;     //potential(V)

//Calculation
C=epsilon0*A/d;    //capacitance(F)
Q=C*V;      //charge on plates(C)

//Result
printf('capacitance is %e  F   \n',C)
printf('charge on plates is %e  C  \n',Q)
