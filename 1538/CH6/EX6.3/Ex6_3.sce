//example-6.3
//page no-172
//given
//gas constant
R=8.314  //J/mol K
//temperature
T1=300  //K
//enthalpy of formation of vacancy
Hf=168*10^3  //J/mol
//as we know that
//n=NA*exp(-Hf/R/T)
//let n/NA=N
N1=exp(-Hf/R/T1)  
//now temperature is
T2=1000  //K
N2=exp(-Hf/R/T2)
// ratio of no of vacancies
ratio=N1/N2  
printf ("the ratio of number of vacancies in equilibrium is %e",ratio)
