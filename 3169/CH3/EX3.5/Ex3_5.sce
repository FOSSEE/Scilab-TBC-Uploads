//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 3.5
//calculation of the load voltage,the load current and the diode power

//given data 
Vs=10//source voltage(in V)
Rl=1*10^3//value of resistance(in ohm)
Vd=0.7//voltage drop(in V) across diode

//calculation
Vl=Vs-Vd
//from the equation of ohm's law.....Il=Vl/Rl
Il=Vl/Rl
//from the equation of power dissipation....Pd=Vd*Il
Pd=Vd*Il

printf('the load voltage is %3.1f V',Vl)
printf('\nthe load current is %3.1f mA',Il*10^3)
printf('\nthe diode power is %3.2f mW',Pd*10^3)
