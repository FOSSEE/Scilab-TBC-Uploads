//Variable declaration
N=6.023*10**23
delta_Hv=1.6*10**-19
k=1.38*10**-23
T=500
mv=5.55;     //molar volume
x=2*10**-8;     //numbber of cm in 1 angstrom

//Calculations
n=N*exp(-delta_Hv/(k*T))/mv
a=(n/(5*10**7*10**6))*x;

//Result
printf('The number that must be created on heating from 0 to 500K is n=%0.3f *10**12 per cm**3\n',(n/10**12)) //into cm**3
printf('As one step is 2 Angstorms, 5*10**7 vacancies are required for 1cm')
printf('The amount of climb down by the dislocation is %0.3f cm',a*10**8)