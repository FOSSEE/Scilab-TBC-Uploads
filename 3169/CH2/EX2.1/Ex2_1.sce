//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 2.1
//calculation of breakdown strength of air

//given data
d1=0.1//length(in cm) of the gap
d2=20//length(in cm) of the gap

//calculation
//from equation of breakdown strength
E1=24.22+(6.08/(d1^(1/2)))//for gap d1
E2=24.22+(6.08/(d2^(1/2)))//for gap d2

printf('the breakdown strength of air for 0.1mm air gap is %3.2f kV/cm.',E1)
printf('\nthe breakdown strength of air for 20 cm air gap is %3.2f kV/cm.',E2)
