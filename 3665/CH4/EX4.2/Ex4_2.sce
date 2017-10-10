clc//
//
//

//Variable declaration
Ev=1.2;
k=1.38*10^-23;     //boltzmann constant(J/K)
e=1.6*10^-19;      //charge(eV)
T1=350;    //temperature(K)
T2=500;    //temperature(K)

//Calculation
x1=Ev/(2.303*k*T1/e);
n1=1/(10^x1);     //number of vacancies per atom at 350K
x2=Ev/(2.303*k*T2/e);
n2=1/(10^x2);     //number of vacancies per atom at 500K

//Result
printf("\n number of vacancies per atom at 350K is %0.4f *10^-17",n1*10^17)
printf("\n number of vacancies per atom at 500K is %0.3f *10^-12",n2*10^12)
