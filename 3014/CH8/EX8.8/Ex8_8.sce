
  clc
// Given that
T1 = 14 // Temp in K
T2 = 13 // Temp in K
T = 4.2 // Temp in K
Hc_T1 = 0.176 // Critical field at Temp T1
Hc_T2 = 0.528 // Critical field at Temp T2

printf("Example 8.8\n")
printf("Standard formula used \tH_c = H_c_0*(1-(T/T_c)^2)  \n")
T_c = sqrt((T1^2*(Hc_T2/Hc_T1)- T2^2) /(Hc_T2/Hc_T1 - 1)) // Calculation of transition temperature
t_c = ceil(T_c*10)/10 // Rounding off two two decimal places
Hc_0 = Hc_T1/(1-(T1/t_c)^2) // Calculation of critical field
Hc_T = Hc_0*(1-(T/t_c)^2) // Calculation of critical field 

printf("\n Transition temperature is %f K.\n",t_c)
printf("Critical field at %f K is %fT.\n",T,Hc_0)
printf("Critical field at 0 K is %fT.\n\n\n",Hc_T)
// Answer in book is 2.588 T for 0 K and 2.37 for 4.2 K
