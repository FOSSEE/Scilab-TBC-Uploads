clc
clear
//Input data
R=10//Resistance in ohms
L=5*10^-3//Inductance in H
C=10*10^-6//Capacitance in F
V=100//Voltage in V
f=50//Frequency in Hz

//Calculations
Xc=(1/(2*3.14*f*C))//Capacitive reactance in ohms
Xl=(2*3.14*f*L)//Inductive reactance in ohms
Z=sqrt(R^2+(Xl-Xc)^2)//Impedence in ohms
I=(V/Z)//Current in A
q=atand((Xl-Xc)/R)//Phase angle in degrees
Vr=(I*R)//Voltage across resistor in V
Vc=(I*Xc)//Voltage across capacitor in V
Vl=(I*Xl)//Voltage across inductor in V

//Output
printf('Total impedence is %3.1f ohms \n Current is %3.3f A \n Phase angle is %3.2f degrees \n Voltage across resistor is %3.2f V \n Voltage across capacitor is %3.2f V \n Voltage across inductor is %3.3f V',Z,I,q,Vr,Vc,Vl)
