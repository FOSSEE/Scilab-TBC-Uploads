clear;
clc;
z=.06*%i;
i=1+.6*%i;
vr=1;
vs=vr+(i*z);
q=.5*((abs(vs))^2-(abs(vr))^2)/abs(z);
q=q-.1;
a=atand(imag(vs)/real(vs))
mprintf("sending end voltage=%f/_%fV\nthe average reactive power flow=%fpu",abs(vs),a,q);
