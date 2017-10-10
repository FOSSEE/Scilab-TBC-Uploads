//Example 23.12
//See also Example 23.10 and Example 23.11
R=40;//Resistance (ohm)
L=3*10^-3;//Inductance (H)
C=5*10^-6;//Capacitance (F)
f1=60;//Frequency 1 (Hz)
f2=10*10^3;//Frequency 2 (Hz)

X_L1=1.13;//Inductive reactance at 60Hz (ohm), See Example 23.10
X_C1=531;//Capacitive reactance at 60Hz (ohm), See Example 23.11
Z1=sqrt(R^2+(X_L1-X_C1)^2);//Impedance at 60Hz
printf('a.Impedance at 60Hz = %0.1f ohm',Z1)

X_L2=188;//Inductive reactance at 10kHz (ohm), See Example 23.10
X_C2=3.18;//Capacitive reactance at 10kHz (ohm), See Example 23.11
Z2=sqrt(R^2+(X_L2-X_C2)^2);//Impedance at 60Hz
printf('\n  Impedance at 10kHz = %0.1f ohm',Z2)

V_rms=120;//Rms voltage (V)
I_rms1=V_rms/Z1;//Rms current at 60Hz (A)
printf('\nb.Rms current at 60hz = %0.3f A',I_rms1)
I_rms2=V_rms/Z2;//Rms current at 10kHz (A)
printf('\n  Rms current at 10khz = %0.3f A',I_rms2)
//Answers vary due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

