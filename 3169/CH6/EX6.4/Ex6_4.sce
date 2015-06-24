//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 6.4
//calculation of circuit inductance and dynamic resistance

//given data
alpha=0.0535*10^6//from table
LC=65//value of product
C=8//value of capacitor (in microfarad)
Ip=10//output peak current(in kA)
t1=8//time to front(in microsecond)

//calculation
L=LC/C//inductance(in microhenry)
Rd=2*(LC*10^-6)*alpha/t1//dynamic resistance
V=Ip*14/C//charging voltage

printf('The value of circuit inductance is %3.3f microhenry',L)
printf('\nThe value of dynamic resistance is %3.4f ohm',Rd)
printf('\nThe value of charging voltage is %3.1f kV',V)
//the correct value of charging voltage is 17.5 kV
