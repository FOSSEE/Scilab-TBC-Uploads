clc
//variable initialisation
Pout=37.3 //Motor Output In KW
Vm=440 //Motor Input in volt
F=50 //supply frequency in Hz
I0=20 //NO Load Line Current Of Motor
R1=0.1 //resistance of stator in ohm
R2=0.15 //resistance of rotor in ohm
X1=0.4 //reactance of Motor in ohm
X2=0.44 //reactance of Motor in ohm
S=0.03 //Slip Of Motor
Ls=1250 //Stator Core Loses In Watt
Lr=1000 //Rotational Losses In KW
Ns=1500 // Synchronous Speed Of Motor

//Solution
Vph=Vm/sqrt(3)
I2=Vph/((R1+(R2/S))+%i*(X1+X2))
I21=abs(I2)
I21=49.1//rounding off to avoid computational error
I0=1.78-(%i*19.9)//Taken in book for No load motor current
I1=I0+I2
y=imag(I1)
x=real(I1)
phi=atand(y/x)
pf=cosd(phi)
P2=3*((I21)^2)*(R2/S)
Tg=(9.55*P2)/Ns
Pm=(1-S)*P2
Pout1=Pm+Lr
Lcs=3*((I21)^2)*R1//Wrong value of I2 is taken in textbook
Lcr=S*P2
Lt=Ls+Lr+Lcs+Lcr
Pin=Lt+Pout1
n=Pout1/Pin
printf('\n\n The input line Current=%0.1f Amp\n\n',I1)
printf('\n\n The power factor=%0.1f lag\n\n',pf)
printf('\n\n The Electromagnetic Torque Developed=%0.1f N-m\n\n',Tg)
printf('\n\n The output=%0.1f Watts\n\n',Pm)
printf('\n\n The efficiency of Motor=%0.1f\n\n',n)
//The answers vary due to round off error
