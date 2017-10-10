clear
//
//
//

//Variable declaration
eta=0.65     //quantum efficiency
n=5*10**5    //number of photons incident

//Calculation
N=eta*n      //number of electron-hole pairs

//Result
printf("\n number of electron-hole pairs is %0.3f  *10**5",N/10**5)
