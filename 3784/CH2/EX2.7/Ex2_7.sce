clc 
//variable initialisation
N=900 //speed in rpm
V=430 //Supply voltage in volts
Ia=20 //current in ampere
N1=900 //speed in rpm  
N2=450 //speed in rpm
Ra=0.2 //armature resistance in ohm

//solution
Vl=V/1.35
V2=((V-(Ia*Ra))/2)+Ia*Ra
a=acosd(V2/V)
printf('\n\n The RMS Voltage per phase=%0.1f Volts\n\n',V2)
printf('\n\n The Firing Angle=%0.1f\n\n',a)
