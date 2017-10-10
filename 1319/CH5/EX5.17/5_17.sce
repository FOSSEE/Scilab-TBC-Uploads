// Equivalent resistance and leakage reactance wrt primary

clc;
clear;

P=1200;
V=60;
I1=100;
R1eq=P/(I1^2);

Zeq=V/I1;

X1eq=sqrt((Zeq^2)-(R1eq^2));

// Secondary short circuited there the parameters calculated are wrt to primary itself

printf('Equivalent Resistance of the transformer w.r.t primary = %g ohms \n',R1eq)
printf('Leakage Reactance of the transformer w.r.t primary = %g ohms \n',X1eq)// Text Book Error Please note
