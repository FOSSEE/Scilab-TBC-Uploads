//Example 2.1, page 47
clc
P=1//power in j/s
r=10^-10//Radius in m^2
R=(P*%pi*r^2)/(4*%pi)//Rate at which energy falls in J/sec
R_e=3.4*10^-19//in Joule, rate at energy removed
t=R_e/R
printf("\n Time required for energy to clear is %e sec",t)