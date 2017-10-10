clc
//variable Initialisation
Vm=400 //Terminal Voltage Of Motor In Volt
F=50 //Supply Frequency
P=6 //Number Of Pole
R1=0.6 //Resistnce Of Motor in Ohm
R2=0.5 //Resistnce Of Motor in Ohm
X1=1.3 //Reactance in Ohm
X2=1.3 //Reactance in Ohm
Xm=50 //Reactance In Ohm
Nr=950 //Speed Of Rotor In RPM

//Solution
Ns=(120*F)/(P)
Wms=((2*%pi)/60)*(Ns)
S=(Ns-Nr)/Ns
Vph=Vm/sqrt(3)
I2=(Vph)/sqrt(((R1+(R2/S))^2)+((X1+X2)^2))
Im=Vph/Xm
I1=Im+I2
Z1=(%i*(Xm)*((R2/S)+%i*(X2)))/((R2/S)+(%i*(X2+Xm)))
Zf=R1+%i*(X1)+(Z1)
Z2=%i*Xm*((R2/(2-S))+(%i*(X2)))/((R2/(2-S))+(%i*(X2+Xm)))
Zb=R1+%i*(X1)+(Z2)
Z3=Zf+Zb
Znew=abs(Z3)
I=Vph/Znew
Tp=(3*((I)^2)*((Xm)^2)*(R2/S))/((Wms)*(((R2/S)^2)+((X2+Xm)^2)))
Tn=-((3*((I)^2)*((Xm)^2)*(R2/(2-S)))/((Wms)*(((R2/(2-S))^2)+((X2+Xm)^2))))
T=Tp+Tn
Wm=Wms*(1-S)
Tl=(8.4/1000)*(Wm^2)//Given
printf('\n\n The Motor Speed=%0.1f rpm\n\n',Ns)
printf('\n\n The motor Current=%0.1f Amp\n\n',I)
disp("Since T=Tl,Motor will run Safely")
