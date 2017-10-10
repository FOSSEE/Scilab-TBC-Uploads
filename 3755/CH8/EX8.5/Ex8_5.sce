clear
//
//
//

//Variable declaration
T1=300;      //temperature(K)
T2=330;      //temperature(K)
E=0.3;     //band gap(eV)

//Calculation
Ec_Ef=T2*E/T1;     //position of Fermi level(eV)

//Result
printf("\n position of Fermi level is %0.3f eV",Ec_Ef)
