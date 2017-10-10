clc;
s=0.03; // full load slip
R=0.015; // rotor resistance per phase
n=4; // number of step in starter
al=s^(1/n); 
R1=R/s; // resistance of whole section
r1=R1*(1-al); 
printf('Resistance of first element is %f ohms\n',r1);
r2=r1*al; 
printf('Resistance of second element is %f ohms\n',r2);
r3=r1*al^2; 
printf('Resistance of third element is %f ohms\n',r3);
r4=r1*al^3; 
printf('Resistance of fourth element is %f ohms\n',r4);




