//Example 23.13
R=40;//Resistance (ohm)
L=3*10^-3;//Inductance (H)
C=5*10^-6;//Capacitance (F)
f_0=1/(2*%pi*sqrt(L*C));//Resonant frequency (Hz)
printf('a.Resonant frequency = %0.2f kHz',f_0/1000)
V_rms=120;//Rms voltage (V)
Z=R;//Impedance is equal to the resistance alone as the reactances cancel out at the resonant frequency (ohm)
I_rms=V_rms/Z;//Rms current (A)
printf('\nb.Rms current = %0.2f A',I_rms)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
