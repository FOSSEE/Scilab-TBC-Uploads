clear;
clc;
E=1;
Ig=.8;
pf=.8;
Xd=1.1;
Xq=.8;
p=E+complex(0,Xq)*Ig*complex(.8,-.6);
angle=atand(imag(p)/real(p));
dell=acosd(pf);
Iq=Xq*cosd(dell+angle);
Id=Xq*sind(dell+angle);
function [A] = p2z(R,Theta)
 if argn(2) <> 2 then
    error("incorrect number of arguments.");
 end
 if ~and(size(R) == size(Theta)) then
   error("arguments must be of the same dimension.");
 end
 A = R.*exp(%i*%pi*Theta/180.);
endfunction
Iqq=p2z(Iq,(20.3015));
Idd=p2z(Id,(-69.685));

EE=E+complex(0,Xd)*Idd+complex(0,Xq)*Iqq;
mprintf("Excitation voltage and load angles are %.4f+%.4f pu and %.4f degree\n",real(EE),imag(EE),angle);
step=2*%pi/100;
delta=0:step:%pi;
PP=(1.6673*E/Xd)*sin(delta);
plot(delta,PP,'-k');
set(gca(),"auto_clear","off")
PP1=.5*(1/Xq-1/Xd)*sin(2*delta);
plot(delta,PP1,'k.');
PP2=PP+PP1;
plot(delta,PP2,'k');
xlabel('power angle in radians');
ylabel('Power output in per unit');
title('Plot of power generated vs power angle');
set(gca(),"auto_clear","on")
