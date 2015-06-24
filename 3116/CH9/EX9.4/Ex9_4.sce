clc
// given that

di=12.8 //Initial diameter in mm
df=10.7 //Final diameter  in mm
sigma=460*10^6     //Tensile strength
printf("Example 9.4\n")

printf("\n Part A") 

RA = ((di^2-df^2)/di^2)*100 //Ductility in terms of Reduction Area 
printf("\n Percent reduction in area is %d%%\n",RA)

printf("\n Part B")
A_o=%pi*di^2*10^-6/4

F=sigma*A_o 
Af=%pi*df^2/4 
sigma_t=F/Af 
printf("\n True stress at failure is %d MPa",sigma_t) 
// Answer in book is 660. It is due to founding off at intermediate stage

