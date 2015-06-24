//To find the pressure
clc
//Given:
W=4*1000 //N
r2=50,r1=100 //mm
//Solution:
//Calculating the maximum pressure
pmax=W/(2*%pi*r2*(r1-r2)) //N/mm^2
//Calculating the minimum pressure
pmin=W/(2*%pi*r1*(r1-r2)) //N/mm^2
//Calculating the average pressure
pav=W/(%pi*(r1^2-r2^2)) //N/mm^2
//Results:
printf("\n\n Maximum pressure, pmax = %.4f N/mm^2.\n",pmax)
printf(" Minimum pressure, pmin = %.4f N/mm^2.\n",pmin)
printf(" Average pressure, pav = %.2f N/mm^2.\n\n",pav)