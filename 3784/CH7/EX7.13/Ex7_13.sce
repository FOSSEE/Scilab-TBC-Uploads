clc
//variable initialization
Vm=600 //Voltage of motor in volt
Pout=30000 // Output Of Motor In Watt
F=50 //Supply frequency in hrtz
P=4 //Number Of Poles
N1=100 //Speed OF Motor In rpm
N2=1000 //Speed OF Motor In rpm
R1=0.05 //Resistance of stator in ohm
R2=0.07 //Resistance of rotor in ohm
R0=53 //Resistance of rotor in ohm
X=0.153 //Reactance of Motor in ohm
X0=23 //Reactance of Motor in ohm
n=1.3 //Stator To Rotr Ratio
N3=300 //Speed OF Motor In rpm


//Solution
Vph=Vm/(sqrt(3))
a=1/n
Ns=(120*F)/(P)
S=(Ns-N2)/Ns
Wm=(2*%pi)/60
Tl=(Pout)/(Wm*N3)
Id=(Tl*Wm*Ns)/(2.339*a*Vph)
I0=Vph/(X0)
I2=(sqrt(2/3))*(Id*a)
Pi=Pout+(R1*((I2)^2))+(R2*((I2)^2))
e=(Pout/Pi)*100
theta=-(atand(Vph/(0.779*Id*a*X0)))
pf=cosd(theta)
printf('\n\n The Motor Efficiency=%0.1f\n\n',e)
printf('\n\n The Power Factor=%0.1f lag\n\n',pf)
//The answers vary due to round off error
