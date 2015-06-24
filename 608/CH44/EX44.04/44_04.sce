//Problem 44.04: A transmission line 5 km long has a characteristic impedance of 800/_-25° ohm. At a particular frequency, the attenuation coefficient of the line is 0.5 Np/km and the phase shift coefficient is 0.25 rad/km. Determine the magnitude and phase of the current at the receiving end, if the sending end voltage is 2.0/_0° V r.m.s.

//initializing the variables:
a = 0.5; // in Np/km
b = 0.25; // in rad/km
rvs = 2; // in Volts
thetavs = 0; // in degrees
rzo = 800; // in ohm
thetazo = -25; // in degrees
n = 5; // in km

//calculation:
//voltage
Vs = rvs*cos(thetavs*%pi/180) + %i*rvs*sin(thetavs*%pi/180)
//characteristic impedance
Zo = rzo*cos(thetazo*%pi/180) + %i*rzo*sin(thetazo*%pi/180)
// receiving end voltage
r = a + %i*b
VR = Vs*%e^(-1*n*r)
//Receiving end current,
IR = VR/Zo

printf("\n\n Result \n\n")
printf("\n Receiving end current, IR is %.2E +(%.2E)i A",real(IR), imag(IR))
