//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.8
//calculation of the length of the experimental wire to get the resonance

//given data
nu1=256//frequency(in Hz) of the tunning fork 1
nu2=384//frequency(in Hz) of the tunning fork 2
l1=21//length(in cm) of the wire for tunning fork 1

//calculation
l2=(nu1/nu2)*l1//law of length

printf('the length of the experimental wire to get the resonance is %d cm',l2)
