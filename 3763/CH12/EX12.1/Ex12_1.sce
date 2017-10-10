clear
//
//
//

//Variable declaration
sigma0=8.55
K=2.45      
sigma=10**-3      //steel size(mm)

//Calculation
sigma=sigma0+(K/sqrt(sigma))      //yield strength

//Result
printf("\n yield strength is %0.3f  kg/mm**2",sigma)
