clc
//variable initialisation
V1=450 //terminal voltage in volts
Vd=30 //voltage drop in volts
V2=420 //input supply in volts
f=50 //frequency in Hz
a1=0//Firing Angle of Converter
//solution
Vt=V1+Vd
V0_0=(3*sqrt(2))/(%pi)
V0_a=480

a2=acosd(V0_a/(V0_0*V2))
printf('\n\n The Firing Angle=%0.1f\n\n',a2)
