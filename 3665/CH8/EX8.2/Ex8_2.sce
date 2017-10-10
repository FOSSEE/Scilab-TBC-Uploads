clc//
//
//

//Variable declaration
Eg=1.12;    //band gap(eV)
T=300;      //temperature(K)
m0=1;    //assume
me=0.12*m0;
mh=0.28*m0;
k=1.38*10^-23;   //boltzmann constant
e=1.6*10^-19;  

//Calculation
EF=(Eg/2)+(3*k*T*log(mh/me)/(4*e));    //position of fermi level(eV)

//Result
printf("\n position of fermi level is %0.3f eV",EF)
