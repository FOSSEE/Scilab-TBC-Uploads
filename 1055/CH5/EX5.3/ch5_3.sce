// To determine the effective reactance per phase
clear
clc;
Vd=100000;
Id=800;// current
X=((3*sqrt(2)*94.115*.866*1000/%pi)-Vd)*%pi/(3*Id);
mprintf("effective reactance per phase , X=%.2f ohm\n",X);//Answer don't match due to difference in rounding off of digits
