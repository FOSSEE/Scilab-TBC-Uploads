//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 3.3
//calculation of the load voltage and the load current

//given data 
Vs=10//source voltage(in V)
Rl=1*10^3//value of resistance(in ohm)

//calculation
Vl=Vs
//from the equation of ohm's law.....Il=Vl/Rl
Il=Vl/Rl

printf('the load voltage is %d V',Vl)
printf('\nthe load current is %d mA',Il*10^3)
