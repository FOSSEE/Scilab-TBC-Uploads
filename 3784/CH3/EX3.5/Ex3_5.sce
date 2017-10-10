clc
// Variable Initiallization
Vm=400 //Supply Voltage In Volt
Ea1= 220// Voltage Of Motor In Volt
Ia=200 //Line Current In Ampere
Ra=0.05 //Armature Resistance In Ohm
N1=750 //Speed Of Motor In rpm
N2=600 //Speed Of Motor In rpm

//solution
Eb1=Ea1-(Ia*Ra)
Eb2=(N2/N1)*Eb1
Ea2=Eb2+(Ia*Ra)
A=acosd((Ea2*%pi)/(Vm*3*sqrt(2)))
printf('\n\n The Firing Angle of Rectifier=%0.1f\n\n',A)
