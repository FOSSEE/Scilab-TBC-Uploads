clc
//variable initialisation
Pout=7.5 // Output Of Motor In KW
Vm=230 //Supply Voltage in volt
F=50 //supply frequency in hrtz
R1=0.36 //resistance of stator in ohm
R2=0.222 //resistance of rotor in ohm
X1=0.47 //reactance of Motor in ohm
X2=0.47 //reactance of Motor in 
Xm=15.5 //reactance of Motor in ohm
S=0.4723 //Slip Of Motor
P=4 //Number Of Poles

//Solution
Vph=Vm/sqrt(3)
Z=((R1+(R2/S))+(%i*(X1+X2)))
I2=Vph/Z
I2r=abs(I2)
Lcr=3*((I2r)^2)*R2
P2=Lcr/S
Ns=(120*F)/P
Tst=(9.55*P2)/Ns
Sm=R2/X2
Z1=(R1+R2)+%i*(X1+X2)
Z2=abs(Z1)
I3=Vph/Z2
I4=abs(I3)
P3=3*((I4)^2)*R2
Tst1=(9.55*P3)/(Ns)
printf('\n\n The Maximum Internal Torque=%0.1f N-m\n\n',Tst)
printf('\n\n Slip at Maximum Torque=%0.1f\n\n',Sm)
printf('\n\n The Starting Torque=%0.1f N-m\n\n',Tst1)
