clc
//Chapter2
//Ex_2.2
//Given
sigma=5.9*10^5 //in ohm^-1*cm^-1
e=1.6*10^-19 //Coulombs
d=8.93 //g/cm^3
Mat=63.5//g/mol
NA=6.02*10^23//mol^-1
n=d*NA/Mat
u_d=sigma/(e*n)//electron drift mobility
disp(u_d,"Drift mobility of electrons in copper at room temperature in cm2/V/s is")
