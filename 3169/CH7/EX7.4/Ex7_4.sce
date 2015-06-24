//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 7.4
//calculation of divider ratio

//given data
R1=16*10^3//high voltage arm resistance(in ohm)
n=16//number of members
R=250//resistance(in ohm) of each member in low voltage arm
R2dash=75//terminating resistance(in ohm)

//calculation
R2=R/n
a=1+(R1/R2)+(R1/R2dash)

printf('The divider ratio is %3.1f',a)
