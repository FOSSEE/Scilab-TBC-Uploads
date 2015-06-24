//Caption:Determine the reading of two wattmeters,total power and power factor
//Exa:1.7
clc;
clear;
close;
//transforming delta connected source into an equivalent Star-connected source
V_s=1351;//source voltage (in Volts)
V=1351/sqrt(3);//in volts
V_phase=0;
Z=360+%i*150;//per-phase impedance(in ohms)
I=V/Z;//current in the circuit (in Amperes)
r=real(I);
i=imag(I);
I_mag=sqrt(r^2+i^2);//in ampere
I_phase=atand(i/r);//degree
//Refer to fig 1.19(a)
V_ab=1351*(cosd(-30)+%i*sind(-30));//in Volts
I_aA=2*(cosd(I_phase)+%i*sind(I_phase));//in Amperes
V_cb=1351*(cosd(-90)+%i*sind(-90));//in Volts
I_cC=2*(cosd(I_phase-120)+%i*sind(I_phase-120));//in Amperes
P1=real(V_ab*conj(I_aA));//reading of wattmeter 1 (in Watts)
disp(P1,'Reading of wattmeter W1 (in Watts) =');
P2=real(V_cb*conj(I_cC));//reading of wattmeter 2 (in Watts)
disp(P2,'Reading of wattmeter W2 (in Watts)=');
P=P1+P2;//total power developed (in Watts)
disp(P,'Total power developed (in Watts)=' );
pf=cosd(I_phase);//power factor
disp(pf,'power factor=')