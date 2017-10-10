clc;
clear;
e=0.001;
D=0.50;
l=0.20;
lg=0.005;
A1=12800;//Stator peak current densities
A2=9600;//Rotor peak current densities
lamda=(%pi/3);//torque angle
F1=A1*D*(1/2);//mmf per pole
F2=A2*D*(1/2);//mmf per pole
Fo=4450;//Resultant gap mmf per pole
Mewo=1.25*10^(-7);
Bm=(Fo*Mewo)/lg;
disp(Bm,'The sine distributed flux density of peak value:')
Mp=((D*l)/(3*Mewo))*(Bm^2);//Magnetic pull per pole
disp(Mp,'The magnetic pull per pole is :')
e1=0.001/0.005;//Eccentricity after displacement of 'e'
Mu=((%pi*D*l)/(4*Mewo))*(Bm^2)*e1;
disp(Mu,'The resultant u.m.p is:')
M=260;
F=M/0.25;
disp(M,'The useful torque of machine is:')
disp(F,'The pheripheral force is:')
