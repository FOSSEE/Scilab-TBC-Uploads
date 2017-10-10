clc
//variable initialisation
a1=0//Initial Firing Angle of Converter
Vl=460//Line to Line Voltage in Volts
Ia=150//armature Current in Ampere
Ra=0.0999//Armature Resistance in ohm
K=0.33
N1=1650//Rotor Speed in rpm
Ia1=15//armature Current for 2nd case in Ampere
//solution
Vm=(sqrt(2)/sqrt(3))*Vl
Va=(3*sqrt(3)/%pi)*Vm*cosd(a1)
Eb1=Va-(Ia*Ra)
N0=Eb1/K//no load Speed in rpm
a2=45
Va2=Va*cosd(a2)
Eb2=Va2-(Ia*Ra)
N01=Eb2/K//No load speed at alpha=30
Eb3=K*N1
Va3=Eb3+(Ia*Ra)
a3=acosd(Va3/Va)
Irms=Ia*sqrt((180-a3)/180)
P1=3*(Vl/sqrt(3))*Irms//Supply VA
P=Va3*Ia//Power input to motor
Pa=Va3*Ia
pf=Pa/P//Power Factor
Eb4=Va3-(Ia1*Ra)
N4=Eb4/K
R=(N4-N1)*100/N1//Speed Regulation
printf('\n\n No load speed at alpha 0=%0.1f rpm\n\n',N0)
printf('\n\n No load speed at alpha 45=%0.1f rpm\n\n',N01)
printf('\n\n The Firing Angle for rated speed=%0.1f\n\n',a3)
printf('\n\n Supply Power at rated speed=%0.1f watts\n\n',P)
printf('\n\n Power Factor at rated speed=%0.1f\n\n',pf)
printf('\n\n Speed Regulation=%0.1f\n\n',R)
//The answers vary due to round off error
