clear;
clc;

ef=3000;
Zc=300;
ea=1700;
iF=ef/Zc
mprintf("\nCurrent in line= %d kA",iF)
Ia=((2*ef)-ea)/Zc
mprintf("\nCurrent through Arrester= %.3f kA",Ia)
Ia=round(Ia *1000)/1000
R=ea/Ia
mprintf("\nresistance of arrester= %.2f ohm",R)
er=ea-ef;
mprintf("\nSurge Voltage Reflected= %.0f kV",er)
Cr=er/ef;
CR=ea/ef;
mprintf("\nCoeff of Reflection = %.3f, Coeff of Refraction=%.3f",Cr,CR)
Cr=(R-Zc)/(R+Zc);
CR=(R*2)/(R+Zc);
mprintf("\nVerification: Coeff of Reflection = %.3f, Coeff of Refraction=%.3f",Cr,CR)
