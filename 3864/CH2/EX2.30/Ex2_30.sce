clear
//

//Initilization of Variables

L=12.6 //m //Length of rail
t1=24 //Degree celsius
t2=44 //degree celsius
alpha=12*10**-6 //Per degree celsius
E=2*10**5 //N/mm**2 //Modulus of ELasticity
gamma=2 //mm //Gap provided for Expansion
sigma=20 //N/mm**2 //Stress

//Calculations     

t=t2-t1 //Temperature Difference

//Free Expansion of the rails
dell=alpha*t*L*1000 //mm 

//When no expansion joint is provided then
p=dell*E*(L*10**3)**-1

//When a gap of 2 mm is provided,then free expansion prevented is
dell_1=dell-gamma
p2=dell_1*E*(L*10**3)**-1

//When stress is developed,then gap left is
gamma2=-(sigma*L*10**3*E**-1-dell)

//Result
printf("\n The minimum gap between the two rails is %0.2f  mm",dell)
printf("\n Thermal Developed in the rials if:No expansionn joint is provided:p %0.2f  N/mm**2",p)
printf("\n                                  :If a gap of is provided then   :p2 %0.2f  N/mm**2",p2)
printf("\n When stress is developed gap left between the rails is %0.2f  mm",gamma2)
