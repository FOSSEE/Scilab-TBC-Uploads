//Chapter 6, Example 6.5
clc
//Initialisation
pi=3.14                       //pi
f=50                          //frequency in hertz
i=5                          //current in ampere
r=10                             //resistance in ohm
L=25*10**-3                    //inductance in henry
VL=39.3                        //from phasor diagram
VR=50                        //from phasor diagram


//Calculation
Vr=i*r                          //voltage across resistor
w=2*pi*f                       //angular frequency
Xl=w*L                         //inductive reactance
Vl=i*Xl                       //voltage across inductor
V=sqrt(VR**2+VL**2)            //voltage
phi=atan(VL/VR)                //phase angle

//Results
printf("Voltage, V = %.1f V\n",V)
printf("Phase Angle, phi = %.1f Degree",phi*180/pi)
