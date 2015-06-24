//Chapter 7,Example 7.1 Page 221
clc
clear
//(i)The natural impedence of the line
d = 100
r = 0.75
E0 = 10^-9/36 //Epselon 
L = 2*10^-7*log(d/r) // inductance per unit length
C = 2*E0/log(d/r) // capacitance per phase per unit length
NI = sqrt(L/C) // nautral impedence
printf ("(i) The natural impedence of the line \n")
printf (" The natural impedance = %f ohms \n\n",NI)
//(ii) the line current
V = 11000 // V
R = 1000
Z2= 1000 
Z1 = 294
I = V/(sqrt(3)*NI) // the line current
printf ("(ii) The line current \n")
printf (" The line current = %f amps \n\n",I)
//(iii) the rate of power consumption
E1 = 2*V*R/(sqrt(3)*(Z1+Z2)) 
P = 3*E1^2*1000/R
printf ("(iii) The rate of power consumption \n")
printf (" The rate of power consumption = %f kW \n",P*10^-6)
E2 = ((Z2-Z1)/(Z2+Z1))*(11/sqrt(3))
Er = 3*(E2^2)*1000/Z1
printf (" The rate of reflected energy = %f kW \n\n",Er)
//(iv) the rate of reflected energy
printf ("(iv) The rate of reflected energy \n")
printf (" In order that the incident wave when reaches the terminating resistance, \n does not suffer reflection, the terminating resistance should be equal to \n the surge impedance of the line, i.e.%f ohms \n\n",NI)
//(v) The amount of reflected and transmitted power
printf ("(v) The amount of reflected and transmitted power \n")
L = 0.5*10^-8
C = 10^-12
SI = sqrt(L/C) // surge impedence of the cable
printf (" Surge impedence of the cable = %f ohm \n",SI)
ReffV = (2*SI/(Z1+SI))*(11/sqrt(3)) // refracted voltage
Rif = ((SI-Z1)/(Z1+SI))*(11/sqrt(3)) // reflected voltage
refP = 3*ReffV^2*1000/SI
rifp = 3*Rif^2*1000/Z1
printf (" Refracted powers = %f kW \n",refP) // refracted powers
printf (" Reflected powers = %f kW \n",rifp) // reflected powers
 
// Answers may vary due to round off error
