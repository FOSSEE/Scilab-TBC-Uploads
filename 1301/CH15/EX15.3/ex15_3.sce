clc;
l=5*0.305;     //converting ft to metre
v=40*0.447;    //converting mile/hr to m/sec
B=3*10^-5;     //magnetic field in Tesla
ve=B*l*v;       //calculating potential difference
disp(ve,"Potential difference in Volt = ");    //diplaying result