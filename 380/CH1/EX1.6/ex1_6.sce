//Caption:Determine load current,load voltage,load power and power factor 
//Exa:1.6
clc;
clear;
close;
//Refer to the fig:1.16
R=40;//in ohms
L=%i*30;//in ohms
V=117*((cosd(0)+%i*sind(0)));//in Volts
//Equivalent load impedance is obtained by parallel combination of Resistance R and Inductance L
Z_L=(R*L)/(R+L);//load impedance (in Ohms)
Z1=0.6+%i*16.8;// in Ohms
Z=Z_L+Z1;//Equivalent impedance of circuit (in Ohms) 
I=V/Z;//current through load (in Amperes)
r1=real(I);
i1=imag(I);
I_mag=sqrt(r1^2+i1^2);//magnitude of current flowing through load (in Amperes)
disp(I_mag,'Reading of ammeter (in Amperes)=');
V_L=I*Z_L;//voltage across load (in Volts)
r2=real(V_L);
i2=imag(V_L);
V_L_mag=sqrt(r2^2+i2^2);//magnitude of voltage across load (in Volts)
disp(V_L_mag,'Reading of voltmeter (in Volts)=');
P=real (V_L*conj(I));//Power developed (in Watts)
disp(P,'Reading of wattmeter (in Watts)=');
pf=P/(V_L_mag*I_mag);//Power factor
disp(pf,'power factor=')