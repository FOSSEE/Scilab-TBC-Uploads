//Caption:Calculate (a)-Current drawn from generator. (b)-Magnitune & phase of load current. (c)-Power delivered to load.
//Exa: 3.4
clc;
clear;
close;
f=37.5*10^6;//frequency(in hertz)
wl=(3*10^8)/f;//wavelength (in meters)
Z_l=100;//in ohms
Z_o=200;//in ohms
l=5*wl/4;//length of line (in meters)
b=2*%pi/wl;
//At generator end,
Z_i=Z_o*(Z_l+%i*Z_o*tan(b*l))/(Z_o+%i*Z_l*tan(b*l));
V_s=200*Z_i/(200+Z_i);
I_s=200/(200+Z_i);
disp(real(I_s),"Current drawn from generator(in amps) =");
//for a lossless line , P(avg)*I_input=P(avg)*I_load
P_avg=V_s*I_s;//in watts
disp(real(P_avg),"Power delivered to load (in watts) =)");
//Real(Vs*Is)=Real(Vs*I_load)
I_load=(P_avg/Z_l)^0.5;//in amps
disp(real(I_load),"Current flowing in load (in amps) =)");