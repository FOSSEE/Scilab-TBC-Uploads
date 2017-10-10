clear
//
//
//

//Variable declaration
delta_Hf=1.6*10**-19      
T=500    //temperature(K)
N=6.026*10**23
k=1.38*10**-23    //boltzmann constant
mv=5.55    //molar volume(cm**3)
ne=10**6    //number of edge dislocations(per cm**3)
v=5*10**7    //number of vacancies
a=2*10**-8   //lattice parameter(cm)

//Calculation
n=(N/mv)*exp(-delta_Hf/(k*T))     //number of vacancies at 300K(per mol)
ac=n*a/(v*ne)      //amount of climb down(cm)

//Result
printf("\n amount of climb down is %0.5f  *10**-8 cm",ac*10**8)
