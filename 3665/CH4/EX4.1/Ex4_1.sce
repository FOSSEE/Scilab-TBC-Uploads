clc//
//
//

//Variable declaration
Ev=1;
k=1.38*10^-23;     //boltzmann constant(J/K)
e=1.6*10^-19;      //charge(eV)

//Calculation
r=Ev/(2.303*1000*k/e);      
n=10^r;                //ratio of n1000/n500

//Result
printf("\n ratio of vacancies is %0.3f *10^5",n/10^5)
