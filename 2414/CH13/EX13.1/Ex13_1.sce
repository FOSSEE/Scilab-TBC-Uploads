clc;
close();
clear();
//page no 442
//prob no. 13.1
Gb=1;
mprintf('(a) SSB:  Gb=%i  \n',Gb);
mprintf('   GbdB=%i  dB\n',10*log10(Gb));
mprintf('(b) DSB:  Gb=%i  \n',Gb);
mprintf('   GbdB=%i  dB\n',10*log10(Gb));
m=0.5;
Gb=m^2/(2+m^2);
mprintf('(c) AM(m=.5):  Gb=%.3f  \n',Gb);
mprintf('   GbdB=%.3f  dB\n',10*log10(Gb));
m=1;
Gb=m^2/(2+m^2);
mprintf('(d) AM(m=1):  Gb=%.3f  \n',Gb);
mprintf('   GbdB=%.3f  dB\n',10*log10(Gb));
delta_phi=5;
Gb=delta_phi^2/2;
mprintf('(e) FM(delta phi=5)):  Gb=%.1f  \n',Gb);
mprintf('   GbdB=%.3f  dB\n',10*log10(Gb));
D=5;
Gb=3*D^2/2;
mprintf('(f) FM(D=5):  Gb=%.1f  \n',Gb);
mprintf('   GbdB=%.3f  dB\n',10*log10(Gb));
Wf1=7.07;
Gb=3/2*D^2*%pi/6*Wf1;
mprintf('(g) FM(D=5, W/f1=7.07):  Gb=%.1f  \n',Gb);
mprintf('   GbdB=%.2f  dB\n',10*log10(Gb));

