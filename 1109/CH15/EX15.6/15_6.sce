clear;
clc;
R1=1000;C1=0.0212*(10^-6);R2=250;
R0=sqrt(R1*R2);
printf("Characteristic impedance of line = %f ohms\n",R0);
L2=C1*R0*R0;
printf("Components of the shunt arm are inductance of %f mH in parallel with a given resistance of %f ohms.",L2*(10^3),R0);
