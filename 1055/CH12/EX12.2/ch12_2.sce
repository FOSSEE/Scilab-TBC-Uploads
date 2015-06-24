//Find the voltage rise at the junction due to surge 
clear
clc;
Xlc=.3*(10^-3);// inductance of cable(H)
Xcc=.4*(10^-6);// capacitance of cable (F)
Xlo=1.5*(10^-3);//inductance of overhead line(H)
Xco=.012*(10^-6);// capacitance of overhead line (F)
Znc=sqrt((Xlc/Xcc));
Znl=sqrt((Xlo/Xco));
mprintf("Natural impedence of cable=%.2f ohms \n",Znc);
mprintf("Natural impedence of overhead line=%.1f ohms \n",Znl);
E=2*Znl*15/(353+27);
mprintf("voltage rise at the junction due to surge =%.2f kV \n",E);
