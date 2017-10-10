//ques-25.9
//Calculating number of molecules in a mole of gas
clc
KE=5.621*10^-21;//KE/molecule (in J)
T=273+0;//temperature (in K)
Na=(3*8.314*T)/(2*KE);
printf("The number of molecules in a mole of gas are %.2f*10^23.",Na*10^-23);
