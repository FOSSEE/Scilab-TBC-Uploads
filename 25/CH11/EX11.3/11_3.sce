// example:-11.3,page no.-593.
// program to calculate the noise figure ig anteena is replaced by amplifier.
L=10^0.2;T=300;To=290;Te=150;
Fl=1+(L-1)*(T/To);
Fld=10*log10(Fl); // converting in to dBm.
Fa=1+(Te/To)
Fad=10*log10(Fa);// converting in to dBm.
Fcas=Fl+L*(Fa-1);
Fcasd=10*log10(Fcas);// converting in to dBm.
disp(Fcasd,'the noise figure of the cascade in dB = ')
disp(Fad,'the noise figure of the amplifier in dB = ')
disp(Fld,'the noise figure of the line in dB = ')