clc
//initialization of new variables
clear
a=30 //cm
t=2.5 //cm
S=15 //cm
s=5 //Tonne
// calculations
I=a*a^3-25*25^3
I=I/12
tau_zx=s*1000*27.5*t*25/(4*35000*t)
FA=S*t*tau_zx
tau_xy=s*1000*a*t*27.5/(4*35000*t)
FB=tau_xy*t*S
//Results
printf('case A \n F = %d kg',FA)
printf('\n case B \n F= %d kg',FB)
