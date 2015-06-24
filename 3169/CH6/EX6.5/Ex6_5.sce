//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 6.5
//calculation circuit inductance and dynamic resistance

//given data
C=8*10^-6//value of capacitor (in farad)
Ip=10//output peak current(in kA)
t1=8*10^-6//time to front(in second)
t2=20*10^-6//time to first half cycle(in second)
V=25*10^3//charging voltage
im=10*10^3//output currennt(in A)

//calculation
omega=%pi/t2
omegat1=omega*t1
alpha=omega*(1/atan(omegat1))
LC=1/((t1^2)+(alpha^2))
L=LC/C
R=2*L*alpha 
V=omega*L*10*exp(-alpha*t1)

printf('The value of circuit inductance is %3.2f microhenry',L*10^6)
printf('\nThe value of dynamic resistance is %3.4f ohm',R)
printf('\nThe value of charging voltage is %3.2f kV',V)

//correct answers is
//The value of charging voltage is 1.59 kV
