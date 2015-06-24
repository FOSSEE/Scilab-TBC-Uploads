
//To determine line currents and neutral currents
//Page 118
clc;
clear;
V=400; // Supply Voltage
Vph=400/sqrt(3); //Phase Voltage
L=480*(10^3); //Balanced Load
//Loads at unit power factor
Lr=50*(10^3); //Load in R phase
Ly=150*(10^3); //Load in Y phase
Lb=200*(10^3); //Load in B phase
pf=0.8; //Power Factor lagging
theta=-1 * acos(pf); //Angle in radians of the balanced LAGGING current

I=L/(sqrt(3)*V*pf)*exp(%i*theta); //Balanced Current Magnitude
Ir=Lr/Vph; //Magnitude of R phase voltage
Iy=Ly/Vph; //Magnitude of Y phase voltage
Ib=Lb/Vph; //Magnitude of B phase voltage

//Vr is taken as reference
//Angles of the phase voltages wrt to the reference
Thetay=-120;
Thetab=120;
Thetar=0;
//Net Currents in the respective phases (RYB)
Irf=Ir+I;
Iyf=Iy+I;
Ibf=Ib+I;
//Angle of the above currents in degrees
r=atand(imag(Irf)/real(Irf));
y=atand(imag(Iyf)/real(Iyf));
b=atand(imag(Ibf)/real(Ibf));
//Angles of the above currents with respect to the reference
rf=Thetar+r;
yf=Thetay+y;
bf=Thetab+b;
//Effective Currents wrt to the reference voltage
Irn=abs(Irf)*exp(%i*%pi*rf/180)
Iyn=abs(Iyf)*exp(%i*%pi*yf/180)
Ibn=abs(Ibf)*exp(%i*%pi*bf/180)
In=Irn+Iyn+Ibn; // Neutral Current
//Note Take Vr as reference
printf('The Net Current in phase R is %g/_%g A\n',abs(Irf),rf);
printf('The Net Current in phase Y is %g/_%g A\n',abs(Iyf),yf)
printf('The Net Current in phase B is %g/_%g A\n',abs(Ibf),bf)
printf('The Net Neutral Current is %g/_%g A\n',abs(In),atand(imag(In)/real(In)))
