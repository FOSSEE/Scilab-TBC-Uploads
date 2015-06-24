clc;
close();
clear();
//page no 443
//prob no. 13.2
GR=1;
mprintf('(a) SSB:  GR=%i  \n',GR);
mprintf('   GRdB=%i  dB\n',10*log10(GR));
GR=2;
mprintf('(b) DSB:  GR=%i  \n',GR);
mprintf('   GRdB=%.2f  dB\n',10*log10(GR));
m=0.5;
GR=2*m^2/(2+m^2);
mprintf('(c) AM(m=.5):  GR=%.4f  \n',GR);
mprintf('   GRdB=%.3f  dB\n',10*log10(GR));
m=1;
GR=2*m^2/(2+m^2);
mprintf('(d) AM(m=1):  GR=%.3f  \n',GR);
mprintf('   GRdB=%.2f  dB\n',10*log10(GR));
delta_phi=5;
GR=(1+delta_phi)*delta_phi^2;
mprintf('(e) FM(delta phi=5)):  GR=%.1f  \n',GR);
mprintf('   GRdB=%.3f  dB\n',10*log10(GR));
D=5;
GR=3*D^2*(1+D);
mprintf('(f) FM(D=5):  GR=%.1f  \n',GR);
mprintf('   GRdB=%.3f  dB\n',10*log10(GR));
Wf1=7.07;
GR=3*(1+D)*D^2*%pi/6*Wf1;
mprintf('(g) FM(D=5, W/f1=7.07):  GR=%.1f  \n',GR);
mprintf('   GRdB=%.2f  dB\n',10*log10(GR));

