clc
//variable initialisation
Vm=400 //Rated Voltage of motor in volt
Vs=440 //Supply Voltage of motor in volt
F=50 //Supply frequency in hrtz
P=4 //Number Of Poles
N1=1475 //Speed OF Motor In rpm
R1=0.35 //Resistance of stator in ohm
R2=0.18 //Resistance of rotor in ohm
X1=0.9 //Reactance of Motor in ohm
X2=0.7 //Reactance of Motor in ohm
Xm=25 //Reactance of Motor in ohm

//Solution
Vph1=Vs/(sqrt(3))
Vph2=Vm/(sqrt(3))
Ns=(120*F)/(P)
S=(Ns-N1)/Ns
I2=(Vph2)/sqrt(((R1+(R2/S))^2)+((X1+X2)^2))
Pg=3*(I2^2)*(R2/S)
Sm=R2/sqrt((R1)^2+((X1+X2)^2))
Wms=(2*%pi*Ns)/60
Tm=3*(Vph1^2)/((2*Wms)*(R1+sqrt((R1)^2+((X1+X2)^2))))
Zi=%i*(Xm*((R1+(R2/S))+%i*(X1+X2)))/(R1+(R2/S)+%i*(X1+X2+Xm))
Z=abs(Zi)
printf('\n\n The Slip=%0.1f\n\n',S)
printf('\n\n The Air gap Power Angle=%0.1f Watts\n\n',Pg)
printf('\n\n The Slip for maximum torque=%0.1f\n\n',Sm)
printf('\n\n The Maximum Torque=%0.1f N-m\n\n',Tm)
printf('\n\n The Input Impedance=%0.1f\n\n',Z)
//The answers vary due to round off error
