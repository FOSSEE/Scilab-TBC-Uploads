
clear
//Given
r=0.53*10**-10                   //m
q1=1.6*10**-19                   //C
q2=-1.6*10**-19                  //C
a=9*10**9 //constant
r1=1.06*10**-10 // seperation of electron

//Calculation
U=a*q1*q2/r
Ue=U/q1 //Potential energy of the system  eV
K=-Ue/2.0 //eV
E=Ue+K //eV
U1=(a*q1*q2/r1)/q1// eV

//Result
printf("\n (i) Potential energy of the system is  %0.1f  eV",Ue)
printf("\n (ii) Minimum amount of work required to free the elctrons ia  %0.1f  ev",E)
printf("\n (iii) Potential energyof the system is  %0.1f ev and work requiredto free the electrons is  %0.1f eV",E,-E)
