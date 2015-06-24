// To find the surge voltages and currents transmitted into branch line
clear
clc;
Z1=600;
Z2=800;
Z3=200;
E=100;
E1=2*E/(Z1*((1/Z1)+(1/Z2)+(1/Z3)));
Iz2=E1*1000/Z2;
Iz3=E1*1000/Z3;
mprintf("Transmitted voltage =%.2f kV \n",E1);
mprintf("The transmitted current in line Z2=%.2f amps \n",Iz2);
mprintf("The transmitted current in line Z3=%.1f amps \n",Iz3);
////Answer don't match exactly due to difference in rounding off of digits i between calculations
