//ques-35.9
//Calculating fundamental frequency and wave number for HCl
clc
k=480;//force constant (in N/m)
m1=1*10^-3;//molar mass of H (in kg/mol)
m2=35*10^-3;//molar mass of Cl (in kg/mol)
r_m=(m1*m2)/((m1+m2)*6.023*10^23);//reduced mass
f=(1/(2*%pi))*sqrt(k/r_m);//frequency
w_n=f/(3*10^8);//wave number
printf("The wave number for HCl is %d /cm and fundamental frequency is %.3f*10^13 Hz.",w_n/100,f*10^-13);
