clc;
f=1e6 //frequency in Hz
L=1 //inductance in henry
//f=(1/2*pi)*(sqrt(1/(L*C)))
c=1/(4*%pi^2*f^2*L);//capacitance
disp(+'F',c,'capacitance =')
