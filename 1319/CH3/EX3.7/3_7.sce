//Reduction in load when one resistor is removed

clc;
clear;

// Assuming the variables to be eqaul to unit quantities

Vph=1;
Vl=sqrt(3)*Vph;
R=1;

// Star connected

Pis=3*(Vph^2)/R; // Initial Power

Pfs=(Vl^2)/(2*R); // Power when one resitor is removed

pers=(Pis-Pfs)*100/Pis; // Percentage decrease in Load

// Mesh connected

Pim=3*(Vl^2)/R; // Initial Power

Pfm=2*(Vl^2)/R; // Power when one resitor is removed

perm=(Pim-Pfm)*100/Pim; // Percentage decrease in Load

printf(' Vl= square root (3) * Vph \n \n')
printf('a)  Star Connected Power = 3*(Vph^2)/R \n')
printf('    When one resistor is removed Power = (Vl^2)/2R \n')
printf('    The percentage reduction in load = %g \n \n',pers)

printf('b)  Mesh Connected Power = 3*(Vl^2)/R \n')
printf('    When one resitor is removed, Power = 2*(Vl^2)/R \n' )
printf('    The percentage reduction in load = %g \n',perm)
