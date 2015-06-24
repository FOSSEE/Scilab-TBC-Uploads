//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 6.6
//calculation of front and tail time

//given data
n=12//number of stages
C=0.126*10^-6//capacitance(in Farad)
R1=800//wavefront resistance(in ohm)
R2=5000//xavetail resistance(in ohm)
C2=1000*10^-12//load capacitance(in Farad)


//calculation
C1=C/n
t1=3*R1*(C1*C2)/(C1+C2)
t2=0.7*(R1+R2)*(C1+C2)

printf('The time to front is %3.2f microsecond',t1*10^6)
printf('\nThe time to tail is %3.1f microsecond',t2*10^6)
