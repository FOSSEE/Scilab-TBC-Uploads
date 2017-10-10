//Example 23.11
C=5*10^-6;//Capacitance (F)
//Value of capacitance is mentioned wrongly in the question
f1=60;//Frequency 1 (Hz)
f2=10*10^3;//Frequency 2 (Hz)
X_C1=1/(2*%pi*f1*C);//Capacitive reactance at 60Hz (ohm)
printf('a.Capacitive reactance at 60Hz = %0.1f ohm',X_C1)
X_C2=1/(2*%pi*f2*C);//Capacitive reactance at 10kHz (ohm)
printf('\n  Capacitive reactance at 10kHz = %0.2f ohm',X_C2)
V=120;//Rms voltage (V)
I1=V/X_C1;//Rms current at 60Hz (A)
printf('\nb.Rms current at 60hz = %0.3f A',I1)
I2=V/X_C2;//Rms current at 10kHz (A)
printf('\n  Rms current at 10khz = %0.1f A',I2)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

