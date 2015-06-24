// To determine the voltage appearing across the pole of C.B. also determine the value of resistance to be used across contacts
clear 
clc;
i=5;
L=5*(10^6);
C=.01;
e=i*sqrt(L/C);
mprintf("the voltage appearing across the pole of C.B.=%.0f V\n",e);
R=.5*sqrt(L/C);
mprintf("the value of resistance to be used across contacts, R=%.0f ohms\n",R);
