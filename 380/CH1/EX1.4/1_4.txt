//Caption:Determine the line current and phase currents,power absorbed by the load and power dessipated by transmission line
//Ex no:1.4
clc;
clear;
close;
//Make delta -star conversion of load
Z_L=1+%i*2;//Impedance of each wire (in Ohms)
Z_p=(177-%i*246);//per-phase impedance (in Ohms)
Z_pY=(177-%i*246)/3;//per-phase impedance in Y-connection (in Ohms)
Z=Z_L+Z_pY;//Total per phase impedance (in Ohms)
V=866/sqrt(3);//Per-phase voltage (in Volts)
V_phase=0;
I=V/Z;//Current in the circuit (in Ampere)
r=real(I);
i=imag(I);
I_mag=sqrt((r^2)+(i^2));//magnitude of current (in Amperes)
I_phase=atand(i/r);//phase of current (in Degrees)
pf=cosd(I_phase);//power factor
//Refer to fig:1.13(b)
//Source are connected in star,so phase currents = line currents
I_na_mag=I_mag;//Magnitude of Source current through n-a (in Amperes)
I_nb_mag=I_mag;//Magnitude of Source current through n-b (in Amperes)
I_nc_mag=I_mag;//Magnitude of Source current through n-c (in Amperes)
I_na_phase=I_phase+(0);//phase angle of current through n-a (in Degree)
I_nb_phase=I_phase+(-120);//phase angle of current through n-b (in Degree)
I_nc_phase=I_phase+(120);//phase angle of current through n-c (in Degree)
disp(I_na_mag,'I_na_mag (in Amperes)=');
disp(I_na_phase,'I_na_phase (in Degrees)=');
disp(I_nb_mag,'I_nb_mag (in Amperes)=');
disp(I_nb_phase,'I_nb_phase (in Degrees)=');
disp(I_nc_mag,'I_nc_mag (in Amperes)=');
disp(I_nc_phase,'I_nc_phase (in Degrees)=');
//Load is connected in delta network
I_AB_mag=I_mag/sqrt(3);//magnitude of current through AB (in Amperes)
I_BC_mag=I_mag/sqrt(3);//magnitude of current through BC (in Amperes)
I_CA_mag=I_mag/sqrt(3);//magnitude of current through CA (in Amperes)
I_AB_phase=I_na_phase+30;//phase angle of current through AB (in Degrees)
I_BC_phase=I_nb_phase+30;//phase angle of current through BC (in Degrees)
I_CA_phase=I_nb_phase-90;//phase angle of current through CA (in Degrees)
disp(I_AB_mag,'I_AB_mag (in Amperes)=');
disp(I_AB_phase,'I_AB_phase (in Degrees)=');
disp(I_BC_mag,'I_BC_mag (in Amperes)=');
disp(I_BC_phase,'I_BC_phase (in Degrees)=');
disp(I_CA_mag,'I_CA_mag (in Amperes)=');
disp(I_CA_phase,'I_CA_phase (in Degrees)=');
I_AB=I_AB_mag*(cosd(I_AB_phase)+%i*sind(I_AB_phase));//(in Amperes)
P_load=3*I_AB_mag^2*real(Z_p);//in watts
disp(real (P_load),'Power dissipated (in Watts)=');
P_line=3*I_mag^2*real(Z_L);//in watts
disp(P_line,'Power dissipated by transmission line (in Watts)=')