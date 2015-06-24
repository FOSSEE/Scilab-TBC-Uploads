//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 3.8
//calculation of the load voltage and the load current

//given data 
Vs=10//source voltage(in V)
Rl=10//value of resistance(in ohm)
Vd=0.7//voltage drop(in V) across diode
Rb=0.23//value of diode resistance(in ohm)

//calculation
Rt=Rl+Rb//total resistance
Vt=Vs-Vd//total voltage across Rt
//from the equation of ohm's law.....I=V/R
Il=Vt/Rt
Vl=Il*Rl

printf('the load voltage is %3.2f V',Vl)
printf('\nthe load current is %3.3f A',Il)

