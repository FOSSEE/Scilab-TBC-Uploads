//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 3.6
//calculation of the load voltage and the load current

//given data 
Vs=36//source voltage(in V)
R1=6*10^3//value of resistance(in ohm) of resistor1
R2=3*10^3//value of resistance(in ohm) of resistor2
R3=1*10^3//value of resistance(in ohm) of resistor3
Vd=0.7//voltage drop(in V) across diode

//calculation
Rth=(R1*R2)/(R1+R2)
Vth=(Vs/(R1+R2))*R2
//from the equation of ohm's law.....I=V/R
Il=(Vth-Vd)/(Rth+R3)//since second approximation is used
Vl=Il*R3
//from the equation of power dissipation....Pd=Vd*Il
Pd=Vd*Il

printf('the load voltage is %3.2f V',Vl)
printf('\nthe load current is %3.2f mA',Il*10^3)
printf('\nthe diode power is %3.2f mW',Pd*10^3)
