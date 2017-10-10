//Ex no.17.4,Page no.381
clc;clear;close;

//Initilization of Variables

sigma_t=100 //MPa //tensile stress
P=170 //KN //Load

//Calculations

//For equal stress in the welds A and B, the load shared by the fillet welds will be proportional to size of weld

//t_a=0.7*s //Effective throat thickness of weld A in upper plate
//s=size of weld 

//t_b=1.05*s //Effective throat thickness of weld B in lower plate

//For weld A
//P_1=l*t*sigma_t 

//After substituting values and simplifying above equation, we get,
//P_1=84000*s //N     (equation 1)

//P_2=l*t_2*sigma_t

//After substituting values and simplifying above equation, we get,
//P_2=126000*s //N     (equation 2)

//After adding equation 1 and 2, we get,
//P=210000*s           (equation 3)

//Now equating total forces of the fillets to load on the plates
s=P*10**3*210000**-1 //cm

//Result
printf("size of end fillet is %.2f cm",s)
