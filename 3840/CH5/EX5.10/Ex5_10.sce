clear
//
//
//

//Variable declaration
m=9.11*10**-31      //mass(kg)
e=1.602*10**-19     //charge(c)
E=5.5               //fermi energy(V/m)
tow=3.97*10**-14    //relaxation time(s)

//Calculation
Vf=sqrt(2*E*e/m)    //fermi velocity(m/s)
lamda=Vf*tow             //mean free path(m)

//Result
printf("\n fermi velocity is %0.2f  *10**6 m/s",Vf/10**6)
printf("\n mean free path is %0.2f  *10**-8 m",lamda*10**8)
