
//what range of forward voltage drop vD can (2.1) be approximated
//Solved Example Ex2.1 page no 48
clear
clc
printf("\n what range of forward voltage drop vD can (2.1) be approximated")
n=1
k=1.38//x 10^-23
T=25+273
q=1.6//x 10^-19
vd=((k*T)/(1.6*(10^4))*4.6151)
printf("\n vd = %0.4f V",vd)
