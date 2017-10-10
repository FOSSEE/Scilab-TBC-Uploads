clc 
//variable initialisation
Va=230 //Supply voltage in volts
N1=1400 //speed in rpm
N2=600 //speed in rpm
N3=1400 //speed in rpm
Vdrop=15//Voltage drop in Volts
//solution
Eb1=Va-15
Eb2=Eb1*(N2/N1)
Va1=Eb2+Vdrop
a2=acosd(Va1/Va)
printf('\n\n The Firing Angle=%0.1f\n\n',a2)
