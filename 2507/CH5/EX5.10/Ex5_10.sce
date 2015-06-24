clc
clear
printf("Example 5.10 | Page number 131 \n\n");
//Find the mass of air entering and temperature of air in vessel

//Given Data
m1 = 0.8 //kg //initial mass of air
p1 = 150 //kPa //initial pressure of air
T1 = 300 //K //initial temperature of air
p_p = 600 //kPa //pressure of air in pipe
T_p = 330 //K // temperature of air in pipe

//Solution
m2T2 = (p_p/p1)*T1*m1
m2 = ((0.718*(m2T2/m1-T1))/(331.65)*m1)+m1 //kg //final mass of air
printf("Mass of air entering in vessel = %.4f kg\n",m2-m1)
T2 = m2T2/m2 //K //Temperature of air in vessel
printf("Temperature of air in vessel = %.1f K",T2)
