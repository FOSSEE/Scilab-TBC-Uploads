
clc
//initialization of variables
tB = 10 // min
tE = 14 // min
l = 0.12 //m
l2 = 10 // m
c = 10000
A = 1/10000 // m^2
//Calculations
theta = 2*tB/(tB+tE)
l1 = l*(1-theta)// m , length of bed unused in first case
V1 = c*A*l // m^3
l3 = l2-l1 // length of bed unused in second case
d = sqrt(V1*4/(l3*%pi))// m
V2 = c*(l-l1)*A*l2/l3 // volume needed for second case
//Results
printf("The volume of adsorbent needed if the bed is kept 12 cm deep is %.2f m^3",V1)
printf("\nThe volume of adsorbent needed if the bed length is 10 m long is %.4f m^3",V2)
