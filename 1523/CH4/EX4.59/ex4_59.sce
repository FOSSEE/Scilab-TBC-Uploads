//AC Circuits : example 4.59 :(pg 4.47)
pf=0.5;
C=79.59*10^-6;
f=50;
XC=(1/(2*%pi*f*C));
R=pf*XC;
Zcoil=XC;
XL=sqrt((Zcoil^2)-(R^2));
L=(XL/(2*%pi*f));
printf("\npf=0.5 \nC=79.57uF \nf=50 Hz \nVcoil=VC ");
printf("\nXC=1/2*pi*f*C =%.f Ohm",XC);
printf("\nVcoil=VC \nZcoil=XC=%.f Ohm",XC);
printf("\npf of coil=cos(phi)=R/Zcoil \nResistance of coil R=%.f Ohm",R);
printf("\nXL=sqrt((Zcoil^2)-(R^2))=%.2f Ohm",XL);
printf("\nXL=2*pi*f*L \nInductance of coil=%.2f H",L);