clc; clear; close;

norm_ot=1;
LEnand3=5/3;
B_effort=16;
LEnand2=4/3;
mprintf(' Normalised output=%f\n',norm_ot);
Ic=norm_ot/4;
mprintf(' Inverter input capacitance=%f\n',Ic);
In3=LEnand3*Ic/4;
mprintf(' Input capacitance of NAND3 gate=%f\n',In3);
Ic1=In3*B_effort/4;
mprintf(' 2nd inverter input capacitance=%f\n',Ic1);
In2=LEnand2*Ic1/4;
mprintf(' Input capacitance of NAND2 gate=%f\n',In2);
