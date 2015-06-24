//Chapter 7_Operational Amplifier Characteristics
//Caption : Maximum allowable frequency
//Example7.17: When a low frequency sinusoidal waveform is applied to an input of the noninverting Op-Amp the amplifier responds linearly over an output range from -10V to +10V. If R1=R2 and the slew rate of the amplifier is 50V/u sec,what is the maximum allowable frequency of an input sinusoid if the output signal swing is to be maintained from -10V to +10V without distortion? resistance and R2 is feedback resitance.
//Solution
clear;
clc;
SlewRate=50/10^-6;//in V/sec
Vo=10-(-10);//from question output is ranging from -10V to +10V
Vom=Vo;//where Vom is the maximum value of Vo
//therefore
Fmax=SlewRate/(2*%pi*Vom);
disp('kHz',Fmax/10^3,'maximum allowable frequency of an input sinusoidal for output swing maintained from -10V to +10v is:')
//Note:
// obtained maximum allowable amplitude is 397.88736 kHz which can be approximated to 400 kHz