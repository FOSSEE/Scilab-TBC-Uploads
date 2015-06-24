//Find the capacitance of a varactor diode
clear;
clc;
//soltion
//given
C=5;//pf//capcitance of varactor diode at V=4V
V=4;//V
K=C*sqrt(4);

//When bias voltage is increased upto 6 V
Vn=6;//V//new bias voltage
Cn=K/(sqrt(Vn));
printf("Capacitance (At 6 V ) = %.3f pf",Cn);
