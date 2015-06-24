clc

Ef=6.25 //eV
E=5.95  //eV
p=0.01
k= 8.617 *10^-5 //eV K^-1 

//p=1-fF(E)
//fF(E)=1/(1+exp(E-Ef/kT))
//p=1-1/(1+exp(E-Ef/kT))               equation 1
x=E-Ef

y=(1/(1-p))-1     // solving the above equtaion 1

T=x/(k*log(y))
printf('T=%f K\n',T)
