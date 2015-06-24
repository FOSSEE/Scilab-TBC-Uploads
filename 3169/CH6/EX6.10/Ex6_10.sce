//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 6.10
//calculation of resistance and inductance

//given data
CR=70.6//value from table
LC=11.6//value from table
C=1//capacitance(in microfarad)
pern=98.8//percentage voltage efficiency
V=10//rating(in kV)
LC2=65//value from table
alpha=0.0535//value from table

//calculation
R=CR/C
L=LC/C
Vo=pern*V/100
L2=LC2/C
R2=2*L2*alpha
Ip=V*C/14

printf('The value of resistance for 1/50 microsecond voltage is %3.1f ohm',R)
printf('\nThe value of inductance for 1/50 microsecond voltage is %3.1f microhenry',L)
printf('\nThe value of output voltage is %3.2f kV',Vo)
printf('\nThe value of inductance for 8/20 microsecond voltage is %d microhenry',L2)
printf('\nThe value of resistance for 8/20 microsecond voltage is %3.3f ohm',R2)
printf('\nThe peak value of current is %d A',Ip*10^3)
