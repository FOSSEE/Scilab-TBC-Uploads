clc 
//variable initialisation
V=440 //voltage in volts
P=100e+3 //power in Watts
N=900 //speed in rpm
V1=415 //supply voltage in volts

//solution
k=(3*sqrt(2))/%pi
a=acosd(V/(k*V1))
V2=0.5*V//At 50% of rated speed
a1=acosd(V2/(k*V1))
printf('\n\n The Firing Angle=%0.1f\n\n',a1)
