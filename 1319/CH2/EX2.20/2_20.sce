//To determine equivalent resistance using star-delta transformation

clc;
clear;

Rax=30;
Rcx=30;
Rac=30;
Ray=30;
Rcy=30;

// Delta to star conversion of the triangle CAX in the circuit
Rx=Rax*Rcx/(Rax+Rcx+Rac);
Ra=Rax*Rac/(Rax+Rcx+Rac);
Rc=Rac*Rcx/(Rax+Rcx+Rac);

R1=Ra+Ray;// Resistance from the common to Y of the upper limb
R2=Rc+Rcy;// Resistance from the common to Y of the lower limb

Reff=R1*R2/(R1+R2); // Effective resistance of both the limbs

Rxy=Rx+Reff; // Effective resistance across X and Y

printf('The Equivalent resistance = %g ohms\n',Rxy)

