//Expression for the sum of energy stored by inductor and capacitor connected in series at resonance

clc;
clear;

printf(' i= Im*cos(w0)*t\n')
printf(' The energy stored is L*(i^2)/2 = L*(Im^2)*(cos(w0*t)^2) \n\n')

printf(' The energy stored in the capacitor (q^2)/2C = 1/2C * (Im^2)*[integration of i wrt dt from 0 to t]^2 \n')
printf('             = 1/2C * (Im^2) *[integration of cos(w0*t) wrt dt from 0 to t]^2\n')
printf('             = 1/2C * (Im^2) *[(sin(w0*t)/w0) limits 0 to t]^2\n')
printf('             = (Im^2)/2 * L * (sin(w0*t)^2)\n\n')
printf('Therefore total energy = L*(Im^2)/2 * [(cos(w0*t)^2)+(sin(w0*t)^2)]\n')
printf('             = (Im^2)*L/2\n')
printf('             = L*(I^2)\n')
