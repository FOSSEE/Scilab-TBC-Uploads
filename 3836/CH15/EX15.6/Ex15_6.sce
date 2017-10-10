clear
//

//Initialisation
R=10**4                  //Resistance in Ohm
f=10**3                  //Frequency in Hertz
C=3*10**-8               //Capacitance in Farad
V=10                     //Voltage

//Calculation 
Xc=1/(2*%pi*f*C)                //Reactance
a=((10**4)**2)+(5.3*10**3)**2
I=sqrt((V**2)/a)               //Current in Amp
Vr=I*R                            //Voltage
Vc=Xc*I                            //Voltage
phi=atan(Vc/Vr)       //Phase Angle in radians

//Result
printf("\n (a) Current, I = %d uA",round(I*10**6))

printf("\n (b V = %.2f V",-phi*180/%pi)
