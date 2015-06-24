clear;
clc;

Vr=220e3/sqrt(3);
d=300;
f=50;

V=-1*((Vr*(2*%pi*f)^2 * d*d *1e-10)/18);
Vs=Vr+V;
vs=sqrt(3) * Vs /1000;
mprintf("Sending end voltage=%.2f kV, and voltage rise =%.0f V/phase", vs, -1*V)
