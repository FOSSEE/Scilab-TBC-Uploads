//Problem 44.15: A loss-free transmission line has a characteristic impedance of 500/_0° and is connected to an aerial of impedance 320 + j240 ohm. Determine (a) the magnitude of the ratio of the reflected to the incident voltage wave, and (b) the incident voltage if the reflected voltage is 20/_35° V

//initializing the variables:
rzo = 500; // in ohm
thetazo = 0; // in degrees
ZR = 320 + %i*240; // in ohm
rvr = 20; // in volts
thetavr = 35; // in degrees

//calculation:
//voltage
VR = rvr*cos(thetavr*%pi/180) + %i*rvr*sin(thetavr*%pi/180)
//characteristic impedance
Zo = rzo*cos(thetazo*%pi/180) + %i*rzo*sin(thetazo*%pi/180)
//the ratio of the reflected to the incident voltage 
//vr = VR/Vi
vr = (ZR - Zo)/(Zo + ZR)
vrmag = (real(vr)^2 + imag(vr)^2)^0.5
//incident voltage, Vi
Vi = VR/vr

printf("\n\n Result \n\n")
printf("\n the magnitude of the ratio Vr : Vi is %.3f",vrmag)
printf("\n incident voltage, Vi is %.2f +(%.2f)i V",real(Vi), imag(Vi))
