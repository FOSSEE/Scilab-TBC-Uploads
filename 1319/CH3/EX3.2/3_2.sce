// To determine the parameters of a balanced 3 phase star connected to an impedance

clc;
clear;

V=208;
Vph=V/sqrt(3);
Z=15+(%i*20);

// Star Conncected load has its line current = phase current

Ia=Vph/Z;
Ib=Ia*(expm(%i*(-2*%pi/3)));
Ic=Ia*(expm(%i*(2*%pi/3)));

Pperphase= (abs(Ia)^2)*real(Z);

Pt=3*Pperphase;

Atheta=atand(imag(Ia)/real(Ia));
Btheta=atand(imag(Ib)/real(Ib));
Ctheta=atand(imag(Ic)/real(Ic));

pf=cosd(Atheta);

printf('The power factor is %g lagging \n',pf)
printf('The total power dissipated = %g W \n',Pt)
printf('The currents of the system are \n')
printf('Ia= %g /_%g A \n',abs(Ia),Atheta)
printf('Ib= %g /_%g A \n',abs(Ib),Btheta-180)
printf('Ic= %g /_%g A \n',abs(Ic),Ctheta) 
