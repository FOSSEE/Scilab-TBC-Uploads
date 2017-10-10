clc
//variable initialisation
a1=0//Initial Firing Angle of Converter
Vl=460//Line to Line Voltage in Volts
Ia=170//armature Current in Ampere
Ra=0.0999//Armature Resistance in ohm
K=0.33
a2=30
N1=1750//Rotor Speed in rpm

//solution
Vm=(sqrt(2)/sqrt(3))*Vl
Va=(3*sqrt(3)/%pi)*Vm*cosd(a1)
Ia1=17
Eb1=Va-(Ia1*Ra)
N0=Eb1/K//no load Speed in rpm
Va2=Va*cosd(a2)//For alpha=30
Eb2=Va2-(Ia1*Ra)
N01=Eb2/K//No load speed at alpha=30
Eb3=K*N1//For Full load Condition
Va3=Eb3+(Ia*Ra)
a3=acosd(Va3/Va)
P=Va3*Ia
Irms=Ia*sqrt(((180-a3)/180))
Vph=Vl/sqrt(3)
pf=P/(3*Vph*Irms)//Power Factor
Eb4=Va3-(Ia1*Ra)
N4=Eb4/K
R=(N4-N1)*100/N1//Speed Regulation
printf('\n\n No load speed at alpha 0=%0.1f rpm\n\n',N0)
printf('\n\n No load speed at alpha 30=%0.1f rpm\n\n',N01)
printf('\n\n The Firing Angle for rated speed=%0.1f\n\n',a3)
printf('\n\n Power Factor at rated speed=%0.1f\n\n',pf)
printf('\n\n Speed Regulation=%0.1f\n\n',R)
