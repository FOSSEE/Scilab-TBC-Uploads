clc;
//page no 423
//problem no 12.5.1
// binary unipolar signal is given
Pavg=6*10^-12;//in W
d=0.02*10^-6;//pulse duration in sec
T=550;//equivalent noise temp in K
Eb=Pavg*d;//avg energy per pulse
No=1.38*10^-23 *T;
r=Eb/No;
//Bit error probability is 
Pbe=1/2 * erfc(sqrt(r/2));
disp(Pbe,'The bit error probability');