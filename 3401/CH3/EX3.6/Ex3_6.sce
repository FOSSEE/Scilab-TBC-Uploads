clc

T=300 //K
//a=E-Ef
//a=3*k*T
//fF(E)=1/(1+exp(E-Ef/kT))
z=exp(3)
y=1/(1+z)                    //y=fF(E)
printf('fF(E)=%f\n',y)
