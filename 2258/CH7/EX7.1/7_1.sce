clc();
clear;
// To calculate the number of electron hole pairs
T1=300;    //temp in K
T2=310;    //temp in K
ni1=2.5*10^19;   //per cubic metre
EgeV1=0.72;    //value of Eg in eV
EgeV2=1.12;    //value of Eg in eV
Eg1=EgeV1*1.6*10^-19;    //Eg in J
Eg2=EgeV2*1.6*10^-19;    //Eg in J
KB=1.38*10^-23;     //boltzmann constant in J/k
//density of electron hole pair is ni = A*(T^(3/2))*exp(-Eg/(2*KB*T))
// let (T^(3/2))*exp(-Eg/(2*KB*T)) be X
X1=(T1^(3/2))*exp(-Eg1/(2*KB*T1));
X2=(T2^(3/2))*exp(-Eg2/(2*KB*T2));
//therefore ni1=A*X1 and ni2=A*X2. dividing ni2/ni1 we get X2/X1
ni2=ni1*(X2/X1);
printf("the number of electron hole pairs per cubic metre is");
disp(ni2);

//answer given in the book is wrong
