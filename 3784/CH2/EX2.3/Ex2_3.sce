clc
//variable initialisation
Va=220 //supply voltage in volts
N1=1500 //speed in rpm
I=50 // current in ampere
Ra=0.5 //armature resistance in ohm
Vl=440 //line voltage in volts
f=50 //frequency in Hz
N2=1200 //speed in rpm

//solution
Vm=(Va*%pi)/(3*sqrt(3))
Vph=(Vl*(sqrt(2)))/(sqrt(3))
Xmer_ratio=Vph/Vm
Eb1=Va-(Ra*I)
Eb2=(N2/N1)*Eb1
Va=Eb2+Ra*I
a=acosd((Va*%pi)/(3*sqrt(3)*Vm))
N3=800
Eb3=(-N3/N1)*Eb1
Va1=Eb3+(2*I*Ra)
a1=acosd((Va1*%pi)/(3*sqrt(3)*Vm))
printf('\n\n Transformer Turns Ratio=%0.1f\n\n',Xmer_ratio)
printf('\n\n The Firing Angle=%0.1f\n\n',a)
printf('\n\n The Firing Angle=%0.1f\n\n',a1)
