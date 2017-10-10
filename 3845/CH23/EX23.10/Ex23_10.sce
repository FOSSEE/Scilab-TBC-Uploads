//Example 23.10
L=3*10^-3;//Inductance (H)
f1=60;//Frequency 1 (Hz)
f2=10*10^3;//Frequency 2 (Hz)
X_L1=2*%pi*f1*L;//Inductive reactance at 60Hz (ohm)
printf('a.Inductive reactance at 60Hz = %0.2f ohm',X_L1)
X_L2=2*%pi*f2*L;//Inductive reactance at 10kHz (ohm)
printf('\n  Inductive reactance at 10kHz = %0.1f ohm',X_L2)
V=120;//Rms voltage (V)
I1=V/X_L1;//Rms current at 60Hz (A)
printf('\nb.Rms current at 60hz = %0.1f A',I1)
I2=V/X_L2;//Rms current at 10kHz (A)
printf('\n  Rms current at 10khz = %0.3f A',I2)
//Answers vary due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

