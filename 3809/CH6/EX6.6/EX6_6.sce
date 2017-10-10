//Chapter 6, Example 6.6
clc
//Initialisation
C=3*10**-8                     //capacitance in farad
pi=3.14                       //pi
f=10**3                          //frequency in hertz
V=10                           //voltage
R=10**4                          //resistance in ohm
i=5                          //current in ampere
r=10                             //resistance in ohm
L=25*10**-3                    //inductance in henry
VL=39.3                        //from phasor diagram
VR=50                        //from phasor diagram


//Calculation
w=2*pi*f                       //angular frequency
Xc=1/(w*C)                      //capacitive reactance in ohm
I=sqrt((V**2)/(R**2+Xc**2))      //current in ampere
phi=atan(Xc/R)                //phase angle

//Results
printf("Current, I = %d uA\n",I*10**6)
printf("Phase Angle, phi = %.2f Degree",phi*180/pi)           //wrong answer in textbook
