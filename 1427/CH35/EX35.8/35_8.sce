//ques-35.8
//Calculating frequency of oxygen and hydrogen bond
clc
k=770;//force constant (in N/m)
r_m=1.563*10^-27;//reduced mass (in kg)
f=(1/(2*%pi))*sqrt(k/r_m);
w_n=f/(3*10^8);
printf("The frequency required is %.3f*10^14 Hz and wave number is %d /cm.",f*10^-14,w_n/100);
