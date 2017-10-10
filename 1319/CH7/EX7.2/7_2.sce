//New plant pf and percent decrease in line current

clc;
clear;

Pmp=5000*(10^3); // Electrical load
pfmp=0.8; // Lag

Pim=500*735;// One horse power is 735W
Effim=96/100; // Efficiency of the motor
pfim=0.9; // Lag
pfsm=0.8; // Lead

Pime=Pim/Effim;// Effective power delivered by the induction motor

deff('x=com(y,z)','x=y+(%i*y*tand(acosd(z)))')// Function to find the complex powers

//Complex Powers
Pcmp=com(Pmp,pfmp); // Manufacturing Plant Load
Pcim=com(Pime,pfim);// Induction Motor
Pcsm=com(Pime,-pfsm);// Synchronous Machine, Minus Sign indicates Lead

Pr=Pcmp-Pcim+Pcsm; // Plant Requirement after replacement

pfar=real(Pr)/abs(Pr); // New Power Factor of the plant

Pnp=abs(Pr);

Vl=poly([0 1],'Vl','c');

Io=Pmp/(pfmp*sqrt(3)*Vl);
In=Pnp/(sqrt(3)*Vl); // Improved Factor Value =1;

red=(Io-In)*100/Io; // Reduction percent in fractions

redeq=Vl-red;// Reduction percent in decimal characteristic equation 

redper=roots(redeq(2));

printf('The New Power Factor of the plant = %g lag \n',pfar )
printf('The Percentage decrease in line current that will result in improved p.f = %g percent \n',redper)



