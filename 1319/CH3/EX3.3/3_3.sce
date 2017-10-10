//To determine the potential of the star point and line currents

clc;
clear;

Zr=10*(expm(%i*%pi/6));
Zy=12*(expm(%i*%pi/4));
Zb=15*(expm(%i*2*%pi/9));

V=440;
Vph=V/(sqrt(3));

//Phase Voltages
Vr=Vph*(expm(%i*0));
Vy=Vph*(expm(%i*-2*%pi/3));
Vb=Vph*(expm(%i*2*%pi/3));

Vs=((Vr/Zr)+(Vy/Zy)+(Vb/Zb))/((1/Zr)+(1/Zy)+(1/Zb));

tvs=atand(imag(Vs)/real(Vs)); // Phase Angle of the star point voltage

Ia=(Vr-Vs)/Zr;
iat=atand(imag(Ia)/real(Ia)); // Angle of current in phase R
Ib=(Vy-Vs)/Zy;
ibt=atand(imag(Ib)/real(Ib)); // Angle of current in phase Y
Ic=(Vb-Vs)/Zb;
ict=atand(imag(Ic)/real(Ic)); // Angle of current in phase B

I=Ia+Ib+Ic;
I=ceil(real(I)*1000)+%i*(ceil(imag(I)*1000));

printf('The potential of the star point = %g /_%g V \n',abs(Vs),tvs)
printf('The line currents are : \n')
printf('R phase current = %g /_%g A \n',abs(Ia),iat)
printf('Y phase current = %g /_%g A \n',abs(Ib),ibt-180)
printf('B phase current = %g /_%g A \n',abs(Ic),ict)

