//Stator Current and pf and efficiency of a motor operating at 0.03 slip

clc;
clear;

V=400;
Vph=V/sqrt(3);
R1=0.2;
R2=0.15;
X1=%i*0.5;
X2=%i*0.3;

s=3/100;

Ptl=2000; // Total Losses

Z1=R1+X1;
Z2=(R2/s)+X2;
Zt=Z1+Z2; // Total Impedance of the circuit

Is= Vph/Zt; // Stator Current

Ctheta=atand(imag(Is)/real(Is)); // Phase angle of stator current

pf= cosd(Ctheta); // Power factor lagging

Pi=sqrt(3)*V*abs(Is)*cosd(Ctheta);

Po=Pi-Ptl; // Power Output

eff=Po*100/Pi;

printf('For a 3 phase, 4 pole, 400V Induction Motor operating at 3 percent slip \n')
printf('i) The Stator current = %g /_%g A \n',abs(Is),Ctheta)
printf('ii) The p.f = %g lagging \n',pf)
printf('iii) The efficiency = %g percent \n',eff)
