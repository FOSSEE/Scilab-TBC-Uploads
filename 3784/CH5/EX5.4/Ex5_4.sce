clc
//variable initialisation
Vm=400 //Input Voltage in volt
F=50 //supply frequency in Hz
P1=4 //number of poles 
R1=0.15 //resistance of stator in ohm
R2=0.12 //resistance of rotor in ohm
X1=0.45 //reactance of Motor in ohm
X2=0.45 //reactance of Motor in ohm
Xm=28.5 //reactance of Motor in ohm
S=0.04 //Slip Of Motor

//Solution
Rl=R2*((1/S)-1)
Vph=Vm/sqrt(3)
I2=Vph/((R1+R2+Rl)+%i*(X1+X2))
I0=Vph/(%i*Xm)
I1=I0+I2
y=imag(I1)
x=real(I1)
phi=atand(y/x)
pf=cosd(phi)
printf('\n\n The Stator Current=%0.1f Amp\n\n',I1)
printf('\n\n The Power Factor=%0.1f lag\n\n',pf)
