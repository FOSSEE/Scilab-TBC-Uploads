clear
clc
R=8.314;//in J/Kmol
T=300;//in K
Nt=10;//in mol
m1=1;//in mol
m2=9;//in mol
M=10;//in mol
DelGm1=Nt*R*T*((m1/M*log(m1/M))+(m2/M*log(m2/M)))*(10^-3);//
printf('DelGm1=%.3f kJ',DelGm1)
DelSm1=-((DelGm1/T)*1000);//
printf('\nDelSm1=%.2f J/K',DelSm1)
Nt1=20;//in mol
m3=19;//in mol
M1=20;//in mol
DelGm3=Nt1*R*T*((m1/M1*log(m1/M1))+(m3/M1*log(m3/M1)))*(10^-3);//
printf('\nDelGm3=%.3f kJ',DelGm3)
DelSm3=-((DelGm3/T)*1000);//
printf('\nDelSm3=%.2f J/K',DelSm3)
DelGm2=DelGm3-DelGm1
printf('\nDelGm2=%.3f kJ',DelGm2)
DelSm2=DelSm3-DelSm1
printf('\nDelSm2=%.2f J/K',DelSm2)

//There are some errors in the solution given in textbook
//page 155
