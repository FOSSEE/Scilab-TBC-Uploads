//To find power using two wattmeter method of a circuit with non reactive resistances

clc;
clear;

V=400; // Line Voltage
Vph=V/(sqrt(3)); // Magnitude of Phase Voltage

// Phase Voltage in RYB sequnce
Vr=Vph*(expm(%i*0));
Vy=Vph*(expm(%i*-2*%pi/3));
Vb=Vph*(expm(%i*2*%pi/3));

// Resitances of the RYB limbs
Rr=10;
Ry=15;
Rb=20;

// Taking Vr as reference
// Millain's Theorem

Vs= ((Vr/Rr)+(Vy/Ry)+(Vb/Rb))/((1/Rr)+(1/Ry)+(1/Rb)); // Star point voltage

//Line Currents in RYB sequence
Ir= (Vr-Vs)/Rr;
Iy= (Vy-Vs)/Ry;
Ib= (Vb-Vs)/Rb;

Vry=Vr-Vy;
Vby=Vb-Vy;

W1= real(Vry*conj(Ir));
W2= real(Vby*conj(Ib));

Wt= W1+W2; // Total Power

// Note Iy in the text book there is a error in the sign of the real part of Vy

printf('The line currents in RYB sequence are : \n')
disp(Ir,' R line :')
printf(' Magnitude = %g A \n',abs(Ir))
disp(Iy,' Y line :')
printf(' Magnitude = %g A\n',abs(Iy))
disp(Ib,' B line :')
printf(' Magnitude = %g A\n \n',abs(Ib))
printf(' Total Power = %g kW \n \n',Wt/1000)
printf(' W1 = %g kW\n',W1/1000)
printf(' W2 = %g kW\n',W2/1000)
