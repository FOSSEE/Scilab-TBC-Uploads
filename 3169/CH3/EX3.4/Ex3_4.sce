//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 3.4
//calculation of the load voltage and the load current

//given data 
Vs=36//source voltage(in V)
R1=6*10^3//value of resistance(in ohm) of resistor1
R2=3*10^3//value of resistance(in ohm) of resistor2
R3=1*10^3//value of resistance(in ohm) of resistor3

//calculation
Rth=(R1*R2)/(R1+R2)
Vth=(Vs/(R1+R2))*R2
//from the equation of ohm's law.....I=V/R
Il=Vth/(Rth+R3)
Vl=Il*R3

printf('the load voltage is %d V',Vl)
printf('\nthe load current is %d mA',Il*10^3)
