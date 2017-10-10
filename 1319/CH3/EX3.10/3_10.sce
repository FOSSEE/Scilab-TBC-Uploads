// Two wattmeter power dertermination for a delta system

clc;
clear;

V=250; // Phase Voltage

// Phase Voltage in RYB sequnce
Vry=V*(expm(%i*0));
Vyb=V*(expm(%i*-2*%pi/3));
Vbr=V*(expm(%i*2*%pi/3));

// Resitances of the RYB limbs
Rry=10+%i*10;
Ryb=20-%i*15;
Rbr=10+%i*20;

// Phase Currents in RYB

Iry= Vry/Rry;
Iyb= Vyb/Ryb;
Ibr= Vbr/Rbr;

// Phase Current Angles wrt to Vr

ary=atand(imag(Iry)/real(Iry));
ayb=atand(imag(Iyb)/real(Iyb));
abr=atand(imag(Ibr)/real(Ibr));

// Line Currents in RYB 
Ir=Iry-Ibr;
Iy=Iyb-Iry;
Ib=Ibr-Iyb;

W1=real(-Vbr*conj(Ir));
W2=real(Vyb*conj(Iy));

Wt= W1+W2; // Total Power

printf('i)\n')
printf(' The Currents in each branch are : \n')
printf(' Branch RY = %g/_%g A \n',abs(Iry),ary)
printf(' Branch YB = %g/_%g A \n',abs(Iyb),ayb)
printf(' Branch BR = %g/_%g A \n',abs(Ibr),abr)

printf('ii) \n')
printf('The line currents in RYB sequence are : \n')
disp(Ir,' R line :')
printf(' Magnitude = %g A \n',abs(Ir))
disp(Iy,' Y line :')
printf(' Magnitude = %g A\n',abs(Iy))
disp(Ib,' B line :')
printf(' Magnitude = %g A\n \n',abs(Ib))

// Precision is more, The Text book includes round off error
printf(' W1 = %g W\n',W1)
printf(' W2 = %g W\n',W2)
