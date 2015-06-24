//chapter 2
//example 2.9
//page 54
clear all;
clc ;
//given
E=5;//i/p voltage in volts
Io=2;//o/p current in mA
Eo=4.5;//o/p voltage in volts
VF=0.7;//forward voltage drop across diode

//finding value of R1
R1=(E-Eo)/Io*10^3;

Er=E;//diode reverse voltage

// forward current
If=(E-VF)/R1*10^3;

printf('\nR1=%dohm\ndiode reverse voltage=%dv\nforward current=%.1fmA',R1,Er,If)
