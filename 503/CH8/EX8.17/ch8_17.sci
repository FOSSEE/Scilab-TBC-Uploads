//to calculate motor eff,excitation emf and power angle, max power op,corresponding net op

clc;
j=sqrt(-1);
Sop=40*1000;
Vt=600;
Ra=.8;
Xs=8;

Pst=2000;
Pmnet=30*1000;
Pm_dev=Pst+Pmnet;
Ia=Sop/(sqrt(3)*Vt);
Poh=3*Ia^2*Ra;
Pin=Pm_dev+Poh;
eff=(1-(Poh+Pst)/Pin)*100;disp(eff,'motor eff(%)');

cos_phi=Pin/(sqrt(3)*Vt*Ia);
phi=acosd(cos_phi);
Ia=Ia*(cosd(phi)+j*sind(phi));
Vt=Vt/sqrt(3);
Za=Ra+Xs*j;
Ef=Vt-Ia*Za;
Ef_line=Ef*sqrt(3);disp(Ef_line,'excitation emf(V)');
delta=atand(imag(Ef)/real(Ef));disp(delta,'power angle(deg)');
IaRa=abs(Ia)*Ra;
IaXs=abs(Ia)*Xs;
AD=Vt*cosd(phi)-IaRa;
CD=Vt*sind(phi)+abs(Ia)*Xs;
Ef_mag=sqrt((abs(AD))^2+(abs(CD))^2);

Pm_out_gross=-((abs(Ef_mag))^2*Ra/(abs(Za))^2)+(Vt*abs(Ef_mag)/abs(Za));
disp(Pm_out_gross,'max power op(W)');
power_angle=atand(imag(Za)/real(Za));
disp(power_angle,'power angle(deg)');