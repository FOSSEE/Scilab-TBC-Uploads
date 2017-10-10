clear
//
//
//

//Variable declaration
ni=2.5*10^19;     //concentration(per m^3)
d=4.4*10^28;    //density(per m^3)
n=4*10^8;      //number of Ge atoms

//Calculation
Na=d/n;     //density of acceptor atoms
np=ni^2/Na;     
npbyni=np/ni;     //ratio of density of electrons

//Result
printf("\n ratio of density of electrons is %0.3f ",npbyni)
