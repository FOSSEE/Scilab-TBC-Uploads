// example:-11.7,page no.-625.
// program to design an amplifier to have a gain of 11 dB at 4 GHZ.
s11=0.75*expm(%i*(-120)*%pi/180);
s21=2.5*expm(%i*(80)*%pi/180);
s12=0;
s22=0.6*expm(%i*(-70)*%pi/180);
Gsmax=1/(1-abs(s11)^2);
Gsmax=10*log10(Gsmax);
Glmax=1/(1-abs(s22)^2);
Glmax=10*log10(Glmax);
Go=abs(s21)^2;
Go=10*log10(Go);
Gtumax=Gsmax+Glmax+Go;
disp(Gsmax,'the maximum matching section gain in dB = ')
disp(Glmax,'the maximum matching section gain in dB = ')
disp(Go,'the gain of the mismatched transistor in dB = ')
disp(Gtumax,'the maximum unilateral transducer gain in dB = ')