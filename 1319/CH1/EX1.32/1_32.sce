//Determine the parameters of the circuit and power and pf

clc;
clear;

tv=30;//Phase angle for voltage
ti=-30;// Phase angle for current
t=tv-ti;//Phase difference between v and i

//Keeping i as reference, Voltage leads current by t angle

i=10*(expm(%i*0));
v=230*(expm(%i*(%pi*t/180)));

z=v/i;

R=real(z);
X=imag(z);

P=abs(v)*abs(i)*cosd(t)/2; // rms values of voltage and current

printf('The circuit parameters are \n')
printf('Resistance = %g ohms\nReactance = %g ohms\n\n',R,X)
printf('The Power consumed = %g W\n',P)
printf('p.f of the circuit = %g\n',cosd(t))
