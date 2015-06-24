disp('chapter 5 ex5.9')
disp('given')
disp('the output of sine wave Vp=5Volt')
disp('the typical slew rate for 741 op-amp S=.5V/1*10^(-6)s')
Vp=5
S=.5/(1*10^(-6))
disp('fs=S/(2*%pi*Vp)')
fs=S/(2*%pi*Vp)
disp('Hz',fs)
disp('The slew rate-limited frequency should be equal to cutoff frequency')
disp('fs=f2=800kHz')
f2=800000
fs=f2
disp('Vp=S/(2*%pi*fs)')
Vp=S/(2*%pi*fs)
disp('volts',Vp)
disp('741 op-amp f2=8kHz')
f2=8000
disp('Vp=S/(2*%pi*f2)')
Vp=S/(2*%pi*f2)
disp('volts',Vp)