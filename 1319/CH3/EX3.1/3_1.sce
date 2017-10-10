// To determine the parameters of a balanced 3 phase star connected to a resistive load

clc;
clear;

V=208;
Vph=V/sqrt(3);
R=35;

// Star Conncected load has its line current = phase current

Ia=Vph/R;
Ib=Ia*(expm(%i*(-2*%pi/3)));
Ic=Ia*(expm(%i*(2*%pi/3)));

Pperphase= (abs(Ia)^2)*R;

Pt=3*Pperphase;

// Resistive Load, p.f is unity

pf=1;

printf('The power factor is %g \n',pf)
printf('The total power dissipated = %g W \n',Pt)
printf('The currents of the system are\n Ia = %g /_0 A \n Ib = %g /_-120 A \n Ic = %g /_120 A \n',abs(Ia),abs(Ib),abs(Ic)) 
