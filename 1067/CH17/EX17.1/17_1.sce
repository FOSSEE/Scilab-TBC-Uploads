clear ;
clc ;
Isc= 25e3;
i=2.55*Isc;
L=1;
r=0.24;
F=2.046*(i^2)*10^-5/r;
mprintf("the force on busbar per meter length =%d kgfper meter",F/1e3);

