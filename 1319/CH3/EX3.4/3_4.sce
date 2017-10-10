//To determine the line currents if one inductor is short circuited

clc;
clear;

V=460; // Line to Line voltage
pf=0.8; // Power Factor
P=8*(10^3); // Power Consumed by the network

Vph=V/sqrt(3);

Iph=P/(sqrt(3)*V*pf);

theta=acos(pf);// Power factor angle
Z=(Vph/Iph)*(expm(%i*theta));

Va=V*expm(%i*0); // Voltage of Phase A
Vc=V*expm(%i*-2*%pi/3); // Voltage of Phase C

Ia=Va/Z; // Current in phase A
Ic=Vc/Z;// Current in phase C

iat=atand(imag(Ia)/real(Ia)); // Phase angle of Ia
ict=atand(imag(Ic)/real(Ic));// Phase angle of Ic

tac=iat-ict; // Angle between current Ia and Ic

Ib=sqrt((abs(Ia)^2)+(abs(Ic)^2)+(2*abs(Ia)*abs(Ic)*cosd(tac)));

printf('The line currents are : \n')
printf('Phase a = %g/_%g A \n',abs(Ia),iat)
printf('Phase b = %g A \n',abs(Ib))
printf('Phase c = %g/_%g A \n',abs(Ic),ict)
