//Example 2.6.1: magnitude and relative error
clc;
clear;
close;
//given data :
format('v',5)
R1=15;//ohm
E1=R1*5/100;//±limiting error for R1
R2=33;//ohm
E2=R2*2/100;//±limiting error for R2
R3=75;//ohm
E3=R3*5/100;//±limiting error for R3
RT=R1+R2+R3;//ohm(in series)
ET=E1+E2+E3;//±limiting error for RT
disp("For series connection, magnitude is "+string(RT)+" ohm & limiting error is ±"+string(ET)+" ohm.");
Epr=ET/RT*100;//%
disp(Epr,"Percent relative error(±%) : ");
