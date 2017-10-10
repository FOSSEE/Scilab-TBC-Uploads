clc;
fs=0.02; // full load slip
ir=2; // ratio of starting current to full load current
n=5; // number of section
R=0.03; // rotor resistance
//ir*ifl=(E2/R)*sm where ifl is full load current and E2 is induced voltage in rotor therefore
sm=fs*ir; // maximum slip
al=sm^(1/n); 
R1=R/sm; // resistance of whole section
r1=R1*(1-al); 
printf('Resistance of first element is %f ohms\n',r1);
r2=r1*al; 
printf('Resistance of second element is %f ohms\n',r2);
r3=r1*al^2; 
printf('Resistance of third element is %f ohms\n',r3);
r4=r1*al^3; 
printf('Resistance of fourth element is %f ohms\n',r4);
r5=r1*al^4; 
printf('Resistance of fifth element is %f ohms\n',r5);
