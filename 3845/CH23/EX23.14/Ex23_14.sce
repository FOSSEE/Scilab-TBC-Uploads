//Example 23.14
R=40;//Resistance (ohm)
L=3*10^-3;//Inductance (H)
C=5*10^-6;//Capacitance (F)
V_rms=120;//Rms voltage (V)
f=60;//Frequency (Hz)
Z=531;//Impedance (ohm), See Example 23.13
cos_phi=R/Z;//Power factor
printf('a.Power factor, cos(phi) = %0.4f',cos_phi)
phi=acosd(cos_phi);//Phase angle (deg)
printf('\n  Phase angle phi = %0.1f deg',phi)

I_rms_b=0.226;//Rms current (A), See Example 23.12
P_ave_b=I_rms_b*V_rms*cos_phi;//Average power (W)
printf('\nb.Average power = %0.2f W',P_ave_b)

I_rms_c=3;//Rms current (A),See Example 23.13
cos_phi_c=1;//Power factor is unity at resonant frequency
P_ave_c=I_rms_c*V_rms*cos_phi_c;//Average power (W)
printf('\nc.Average power = %0.1f W',P_ave_c)
//Some values are wrongly mentioned in the textbook; frequency in (b) and I rms value in (c)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
