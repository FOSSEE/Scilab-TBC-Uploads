//Example 8.3, page 298
clc
m=9*10^-31//in kg
e=1.6*10^-19//in coul
c=3*10^8//in m/s2
four_pi_epsilon=1.1*10^-34//in j-sec
constant=9*10^9//nt-n2/coul2
delta_E=(constant^4*m*e^8)/(54*c*c*(four_pi_epsilon)^4)
printf("\n The energy deflection is %e Joule",delta_E)
//Answer given in the book is wrong