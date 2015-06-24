
clc 
//Given that
t = 1.8e-5 // Relaxation time in second
epsilon_r = 1 // let
printf("Example 4.18")
f = 1/(2*%pi*t) // Calculation of frequency
delta = atan(epsilon_r/epsilon_r)
phi = 90 - delta*180/%pi // Calculation of phase difference
printf("\n Frequency is %f KHz\n",f/1e3)
printf(" Phase difference between current and voltage is %d degree.",phi)


