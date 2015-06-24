clc
clear

//input
r=1;//resistance of the coil in ohms
l1=10*(10^-6);//inductance of coil in henry
c1=1*(10^-6);//capacitor which is connected in series with the coil in farad
l2=20*(10^-6);//changed inductance in henry
c2=0.5*(10^-6);//changed capacitance in farad
v=10;//supply volts in volts

//calculations
f0=1/(2*%pi*((l1*c1)^0.5));//resonant frequency in hertz
F0=0.9*f0;//required resonant frequency in hertz
xl1=2*%pi*F0*l1;//inductive reactance in ohms
xc1=1/(2*%pi*F0*c1);//capacitive reactance in ohms
X=xc1-xl1;//effective reactance in ohms
z=((r^2)+(X^2))^0.5;//impedance in ohms
i=v/z;//current in ohms
xl2=2*%pi*f0*l2;//new inductive reactance in ohms
xc2=xl2;// at resonance
xl3=0.9*xl2;//inductive reactacne at lower frequency in ohms
xc3=xc2/0.9;//inductive capacitance at lower frequency in ohms
X1=xc3-xl3;//effective reatance in ohms
I=v/X1;//current in amperes

//output
mprintf('the value of the current at 0.9*resonant frequency is %3.2f A and at lower frequency with change in values of inductance and capacitance is %3.0f A',i,I)
