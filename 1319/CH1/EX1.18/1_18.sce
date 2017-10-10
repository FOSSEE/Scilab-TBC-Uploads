//Expression for the sum of energy stored by inductor and capacitor connected in parallel at resonance

clc;
clear;

printf('v = Vm * cos(w0*t)\n')
printf('The energy stored by the capacitor = C*(Vm^2)*(cos(w0*t)^2)\n')
printf('The energy stored by the inductor = L*(i^2)/2\n\n')
printf('v   = L *(di/dt)\n di = v*dt/L\n (i^2) = [integration of (v/L) wrt dt from 0 to t]^2 \n')
printf('    = (Vm^2)/(L^2) * (sin(w0*t)^2)/(w0^2) = (Vm/L)^2 * (sin(w0*t)^2) * LC\n')
printf('    = (Vm^2)*C*(sin(w0*t)^2)/L \n\n')
printf(' Energy = L*(i^2)/2 = (Vm^2)*C*(sin(w0*t)^2)*L/(L*2)\n')
printf('        = C/2 * (Vm^2)*(sin(w0*t)^2)\n\n')
printf(' Therefore total energy = C*(Vm^2)/2 = C*(V^2)\n')
