clc;
H0=282990;
HRo=(1*1018)+(0.5*1036);
HRr=(1*86115)+(0.5*90144);
HPo=1*1368;
HPr=1*140440;

HT=H0+(HRr-HRo)-(HPr-HPo);
disp(HT,"Δh at 2800 K is:")
