clc
L=0.1;                   //Assigning values to parameters
R=10;
V=230;
f=50;
C=200*10^-6;
Xl=2*%pi*f*L;
Xc=1/(2*%pi*f*C);
Z=sqrt(R*R+(Xl-Xc)*(Xl-Xc));
I=V/Z;
Zcoil=sqrt(R*R+Xl*Xl);
Vcoil=I*Zcoil;
Vc=I*Xc;
disp("Amperes",I,"Circuit Current");
disp("Ohms",Zcoil,"Coil impedance");
disp("Volts",Vcoil,"Coil voltage");
disp("Volts",Vc,"Capacitor Voltage");
fr=1/(2*%pi*sqrt(L*C));
Ir=V/R;
Xl=2*%pi*fr*L;
Xc=Xl;
Zcoil=sqrt(R*R+Xl*Xl);
Vcoil=Ir*Zcoil;
Vc=Ir*Xc;
disp("Amperes",Ir,"Circuit Current at resonance");
disp("Ohms",Zcoil,"Coil impedance at resonance");
disp("Volts",Vcoil,"Coil voltage at resonance");
disp("Volts",Vc,"Capacitor Voltage at resonance");