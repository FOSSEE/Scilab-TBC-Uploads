//Example 4.10:power dissipated
clc;
clear;
close;
r1=0.6-%i*0.24;//V
r2=0.6+%i*0.4;//V
r3=-0.1-%i*0.4;//V
f=50;//Hx
ir=1000;//ohm
i1=r1/ir;//A
pdr=(real(r1)*real(i1))+(imag(r1)*imag(i1));//W
disp(pdr*10^3,"power dissipated in the resistor is,(mW)=")
pdC=(real(r1)*real(i1))+(imag(r2)*imag(i1));//W
disp(pdC*10^3,"power dissipated in the coil is,(mW)=")
pdc=(real(r3)*real(i1))-(imag(r2)*imag(i1));//W
disp(pdc*10^3,"power dissipated in the capacitor is,(mW)=")
imp=(r2/r1)*10^3;//ohm
rc=imag(imp);//ohm
indu=rc/(2*%pi*f);//H
ersl=(1/2)*(imag(i1)^2+real(i1)^2)*indu;//joules
disp(ersl*10^6,"energy stored in the coil is,(micro-J)=")
admc=(r1*10^-3)/r3;//ohm^-1
C=imag(admc)/(2*%pi*f);//
ersc=(1/2)*(imag(r3)^2+real(r3)^2)*C;//
disp(ersc*10^6,"energy stored in capacitor is,(micro-J)=")
