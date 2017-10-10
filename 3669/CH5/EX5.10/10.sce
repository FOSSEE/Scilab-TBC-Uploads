
//Variable declaration
EF=5.5*1.602*10**-19;     //fermi energy of silver(J)
tow=3.97*10**-14;    //relaxation time(s)
m=9.11*10**-31;     //mass(kg)

//Calculation
vf=sqrt(2*EF/m);      //fermi velocity(m/s)
lamda=vf*tow;      //mean free path(m)

//Result
printf('fermi velocity is %0.3f  *10**6 m/s   \n',(vf/10**6))
printf('mean free path is %0.3f   *10**-8 m  \n',(lamda*10**8))